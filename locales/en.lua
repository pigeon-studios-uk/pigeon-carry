--[[
    Pigeon Carry: English.

    To translate, copy this file to a new one named with the language's code (such as de.lua or pt-br.lua),
    change `Locales.en` to match (Locales.de), translate the text in quotes, and set Config.Locale.
    Keep words in {curly brackets} and ~GTA codes~ exactly as they are; they're filled in automatically.
]]

Locales = Locales or {}

Locales.en = {
    -- Title of the messages.
    title = 'Carry',
    -- {name} is who's asking, {accept} and {decline} are keys like Y and N.
    request_carry = '{name} wants to carry you. {accept} to accept, {decline} to decline.',
    -- {name} is who's asking, {accept} and {decline} are keys like Y and N.
    request_piggyback = '{name} wants to give you a piggyback. {accept} to accept, {decline} to decline.',
    -- {name} is who was asked.
    asked = 'Asked {name}.',
    -- {name} is who said no.
    declined = '{name} said no.',
    -- The other player is already carrying, being carried or being asked.
    busy = 'They\'re busy right now.',
    -- Nobody close enough, or in a vehicle.
    no_one = 'There\'s no one close enough.',
    -- In GTA's Settings -> Key Bindings -> FiveM.
    key_accept = 'Accept a carry',
    -- In GTA's Settings -> Key Bindings -> FiveM.
    key_decline = 'Decline a carry',
    -- The chat suggestion for /carry.
    help_carry = 'Carry the nearest player over your shoulder, or put them down.',
    -- The chat suggestion for /piggyback.
    help_piggyback = 'Give the nearest player a piggyback, or put them down.',
}
