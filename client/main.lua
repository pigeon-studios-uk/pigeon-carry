--[[
    Pigeon Carry: client.

    /carry or /piggyback next to another player asks the server to carry them. They get a request to accept
    or decline. Once they accept, the carried player's game attaches their character to the carrier (each
    game can only move its own character) and both play GTA's paired animations, which the game syncs.
    Either player can use the command again to end it, and it ends if the carrier dies or gets in a vehicle.
]]

local RESOURCE = GetCurrentResourceName()

local MODES = {
    carry = {
        carrier = { dict = 'missfinale_c2mcs_1', anim = 'fin_c2_mcs_1_camman', flag = 49 },
        carried = { dict = 'nm', anim = 'firemans_carry', flag = 33 },
        offset = { 0.27, 0.15, 0.63 }, rotation = { 0.5, 0.5, 180.0 },
    },
    piggyback = {
        carrier = { dict = 'anim@arena@celeb@flat@paired@no_props@', anim = 'piggyback_c_player_a', flag = 49 },
        carried = { dict = 'anim@arena@celeb@flat@paired@no_props@', anim = 'piggyback_c_player_b', flag = 33 },
        offset = { 0.0, -0.07, 0.45 }, rotation = { 0.0, 0.0, 0.0 },
    },
}

-- Controls the carrier can't use: jump, aim, attack, melee, enter a vehicle.
local CARRIER_BLOCKED = { 22, 23, 24, 25, 37, 44, 140, 141, 142, 143, 257, 263 }
-- Controls the carried player keeps: look around, chat, push to talk.
local CARRIED_ALLOWED = { 1, 2, 245, 249 }

-- 'auto' follows ox_lib's language (the ox:locale convar), and English when that isn't set.
local locale = Config.Locale == 'auto' and GetConvar('ox:locale', 'en') or Config.Locale
local strings = Locales[locale] or Locales.en

local function t(key, values)
    local text = strings[key] or Locales.en[key] or key
    return (text:gsub('{(%w+)}', function(name)
        local value = values and values[name]
        return value ~= nil and tostring(value) or '{' .. name .. '}'
    end))
end

local function notify(text, kind)
    local mode = Config.Notifications
    if mode == 'ox_lib' or (mode == 'auto' and GetResourceState('ox_lib') == 'started') then
        TriggerEvent('ox_lib:notify', { title = strings.title, description = text, type = kind or 'inform', duration = 6000 })
    else
        BeginTextCommandThefeedPost('STRING')
        AddTextComponentSubstringPlayerName(text)
        EndTextCommandThefeedPostTicker(false, false)
    end
end

local current                   -- { role = 'carrier' | 'carried', other = server id, mode = 'carry' | 'piggyback' }
local request                   -- { expires } while someone is asking this player

local function loadDict(dict)
    if HasAnimDictLoaded(dict) then return true end
    RequestAnimDict(dict)
    local giveUp = GetGameTimer() + 3000
    while not HasAnimDictLoaded(dict) and GetGameTimer() < giveUp do Wait(0) end
    return HasAnimDictLoaded(dict)
end

local function play(ped, anim)
    TaskPlayAnim(ped, anim.dict, anim.anim, 8.0, -8.0, -1, anim.flag, 0.0, false, false, false)
end

local function otherPed(serverId)
    local player = GetPlayerFromServerId(serverId)
    if player == -1 then return nil end
    local ped = GetPlayerPed(player)
    return ped ~= 0 and DoesEntityExist(ped) and ped or nil
end

local function finish()
    if not current then return end
    local ped = PlayerPedId()
    if current.role == 'carried' then DetachEntity(ped, true, false) end
    ClearPedTasks(ped)
    current = nil
end

--- The nearest other player on foot within Config.Distance, as a server id, or nil.
local function nearest()
    local me = PlayerPedId()
    local coords = GetEntityCoords(me)
    local best, bestDistance
    for _, player in ipairs(GetActivePlayers()) do
        local ped = GetPlayerPed(player)
        if ped ~= me and not IsPedInAnyVehicle(ped, false) then
            local distance = #(coords - GetEntityCoords(ped))
            if distance <= Config.Distance and (not bestDistance or distance < bestDistance) then
                best, bestDistance = GetPlayerServerId(player), distance
            end
        end
    end
    return best
end

local function ask(mode)
    if current then
        TriggerServerEvent('pigeon-carry:stop')
        return
    end
    local ped = PlayerPedId()
    if IsPedInAnyVehicle(ped, false) or IsPedDeadOrDying(ped, true) then return end
    local target = nearest()
    if not target then return notify(t('no_one'), 'error') end
    TriggerServerEvent('pigeon-carry:ask', target, mode)
end

---------------------------------------------------------------------------
-- From the server

RegisterNetEvent('pigeon-carry:message', function(key, values)
    notify(t(key, values), key == 'asked' and 'inform' or 'error')
end)

RegisterNetEvent('pigeon-carry:asked', function(from, mode, name)
    request = { expires = GetGameTimer() + Config.RequestSeconds * 1000 }
    notify(t(mode == 'piggyback' and 'request_piggyback' or 'request_carry',
        { name = name, accept = Config.AcceptKey, decline = Config.DeclineKey }), 'inform')
end)

RegisterNetEvent('pigeon-carry:start', function(role, other, mode)
    local setup = MODES[mode]
    if not setup or (role ~= 'carrier' and role ~= 'carried') then return end
    local anim = setup[role]
    if not loadDict(anim.dict) then return TriggerServerEvent('pigeon-carry:stop') end

    local ped = PlayerPedId()
    current = { role = role, other = other, mode = mode }

    if role == 'carried' then
        local carrier = otherPed(other)
        if not carrier then
            current = nil
            return TriggerServerEvent('pigeon-carry:stop')
        end
        AttachEntityToEntity(ped, carrier, 0, setup.offset[1], setup.offset[2], setup.offset[3],
            setup.rotation[1], setup.rotation[2], setup.rotation[3], false, false, false, false, 2, false)
    end
    play(ped, anim)

    CreateThread(function()
        while current and current.other == other do
            ped = PlayerPedId()
            if not IsEntityPlayingAnim(ped, anim.dict, anim.anim, 3) then play(ped, anim) end
            if current.role == 'carrier' then
                for _, control in ipairs(CARRIER_BLOCKED) do DisableControlAction(0, control, true) end
                if IsPedDeadOrDying(ped, true) or IsPedInAnyVehicle(ped, true) or IsPedRagdoll(ped) then
                    TriggerServerEvent('pigeon-carry:stop')
                    finish()
                end
            else
                DisableAllControlActions(0)
                for _, control in ipairs(CARRIED_ALLOWED) do EnableControlAction(0, control, true) end
                if not otherPed(other) then
                    TriggerServerEvent('pigeon-carry:stop')
                    finish()
                end
            end
            Wait(0)
        end
    end)
end)

RegisterNetEvent('pigeon-carry:stopped', finish)

---------------------------------------------------------------------------
-- Commands, keys and exports

RegisterCommand(Config.Commands.carry, function() ask('carry') end, false)
RegisterCommand(Config.Commands.piggyback, function() ask('piggyback') end, false)

local function answer(accept)
    if not request or GetGameTimer() > request.expires then return end
    request = nil
    TriggerServerEvent('pigeon-carry:answer', accept)
end

RegisterCommand('+carryaccept', function() answer(true) end, false)
RegisterCommand('-carryaccept', function() end, false)
RegisterKeyMapping('+carryaccept', strings.key_accept or Locales.en.key_accept, 'keyboard', Config.AcceptKey)

RegisterCommand('+carrydecline', function() answer(false) end, false)
RegisterCommand('-carrydecline', function() end, false)
RegisterKeyMapping('+carrydecline', strings.key_decline or Locales.en.key_decline, 'keyboard', Config.DeclineKey)

TriggerEvent('chat:addSuggestion', '/' .. Config.Commands.carry, t('help_carry'))
TriggerEvent('chat:addSuggestion', '/' .. Config.Commands.piggyback, t('help_piggyback'))

--- 'carrier', 'carried' or nil.
exports('GetRole', function() return current and current.role or nil end)

AddEventHandler('onResourceStop', function(resource)
    if resource == RESOURCE then finish() end
end)
