--[[
    Pigeon Carry: Swedish (Svenska).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'sv'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.sv = {
    title = 'Bära',
    request_carry = '{name} vill bära dig. {accept} för att godta, {decline} för att avböja.',
    request_piggyback = '{name} vill bära dig på ryggen. {accept} för att godta, {decline} för att avböja.',
    asked = 'Frågade {name}.',
    declined = '{name} sa nej.',
    busy = 'De är upptagna just nu.',
    no_one = 'Ingen är tillräckligt nära.',
    key_accept = 'Godta att bli buren',
    key_decline = 'Avböj att bli buren',
    help_carry = 'Bär närmaste spelare över axeln, eller sätt ner dem.',
    help_piggyback = 'Bär närmaste spelare på ryggen, eller sätt ner dem.',
}
