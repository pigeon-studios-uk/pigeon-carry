--[[
    Pigeon Carry: server.

    Passes a carry or piggyback request to the other player, checks both are free, on foot and close, and
    starts it when they accept. Either player can end it, and it ends if either leaves.
]]

local RATE_MS = 1000            -- the shortest time between two requests from one player
local LAG = 1.5                 -- metres allowed on top of Config.Distance, for movement and lag

local pending = {}              -- [target] = { from, mode, expires }
local carrying = {}             -- [carrier] = carried
local carriedBy = {}            -- [carried] = carrier
local last = {}

local function busy(src) return carrying[src] or carriedBy[src] end

--- The character's name on Qbox, QBCore or ESX, or the player's FiveM name.
local qbCore, esx
local function nameOf(src)
    if Config.Names == 'character' then
        local ok, name = pcall(function()
            if GetResourceState('qbx_core') == 'started' then
                local player = exports.qbx_core:GetPlayer(src)
                local info = player and player.PlayerData.charinfo
                return info and (info.firstname .. ' ' .. info.lastname)
            elseif GetResourceState('qb-core') == 'started' then
                qbCore = qbCore or exports['qb-core']:GetCoreObject()
                local player = qbCore.Functions.GetPlayer(src)
                local info = player and player.PlayerData.charinfo
                return info and (info.firstname .. ' ' .. info.lastname)
            elseif GetResourceState('es_extended') == 'started' then
                esx = esx or exports.es_extended:getSharedObject()
                local player = esx.GetPlayerFromId(src)
                return player and player.getName()
            end
        end)
        if ok and type(name) == 'string' and name ~= '' then return name end
    end
    return GetPlayerName(src)
end

local function tell(src, key, values)
    TriggerClientEvent('pigeon-carry:message', src, key, values)
end

--- Both on foot and close enough.
local function close(a, b)
    local pedA, pedB = GetPlayerPed(a), GetPlayerPed(b)
    if pedA == 0 or pedB == 0 then return false end
    if GetVehiclePedIsIn(pedA, false) ~= 0 or GetVehiclePedIsIn(pedB, false) ~= 0 then return false end
    return #(GetEntityCoords(pedA) - GetEntityCoords(pedB)) <= Config.Distance + LAG
end

local function stop(src)
    local carrier = carrying[src] and src or carriedBy[src]
    if not carrier then return end
    local carried = carrying[carrier]
    carrying[carrier], carriedBy[carried] = nil, nil
    TriggerClientEvent('pigeon-carry:stopped', carrier)
    TriggerClientEvent('pigeon-carry:stopped', carried)
end

RegisterNetEvent('pigeon-carry:ask', function(target, mode)
    local src = source
    if mode ~= 'carry' and mode ~= 'piggyback' then return end
    target = tonumber(target)
    if not target or target == src or not GetPlayerName(target) then return end

    local now = GetGameTimer()
    if last[src] and now - last[src] < RATE_MS then return end
    last[src] = now

    if busy(src) then return stop(src) end
    if busy(target) or (pending[target] and pending[target].expires > now) then return tell(src, 'busy') end
    if not close(src, target) then return tell(src, 'no_one') end

    pending[target] = { from = src, mode = mode, expires = now + Config.RequestSeconds * 1000 }
    TriggerClientEvent('pigeon-carry:asked', target, src, mode, nameOf(src))
    tell(src, 'asked', { name = nameOf(target) })
end)

RegisterNetEvent('pigeon-carry:answer', function(accept)
    local target = source
    local request = pending[target]
    pending[target] = nil
    if not request or request.expires < GetGameTimer() then return end
    local from = request.from

    if accept ~= true then return tell(from, 'declined', { name = nameOf(target) }) end
    if busy(from) or busy(target) then return tell(target, 'busy') end
    if not close(from, target) then
        tell(from, 'no_one')
        return tell(target, 'no_one')
    end

    carrying[from], carriedBy[target] = target, from
    TriggerClientEvent('pigeon-carry:start', from, 'carrier', target, request.mode)
    TriggerClientEvent('pigeon-carry:start', target, 'carried', from, request.mode)
end)

RegisterNetEvent('pigeon-carry:stop', function()
    stop(source)
end)

AddEventHandler('playerDropped', function()
    local src = source
    stop(src)
    pending[src], last[src] = nil, nil
    for target, request in pairs(pending) do
        if request.from == src then pending[target] = nil end
    end
end)

--- True if the player is carrying someone or being carried.
exports('IsBusy', function(src) return busy(tonumber(src)) ~= nil end)

--- Ends a carry the player is part of, for example when they're arrested or teleported.
exports('Stop', function(src) stop(tonumber(src)) end)
