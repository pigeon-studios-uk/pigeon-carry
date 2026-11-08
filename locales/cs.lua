--[[
    Pigeon Carry: Czech (Čeština).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'cs'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.cs = {
    title = 'Nošení',
    request_carry = '{name} tě chce nést. {accept} pro přijetí, {decline} pro odmítnutí.',
    request_piggyback = '{name} tě chce nést na zádech. {accept} pro přijetí, {decline} pro odmítnutí.',
    asked = 'Zeptal ses: {name}.',
    declined = '{name} odmítl.',
    busy = 'Teď jsou zaneprázdnění.',
    no_one = 'Nikdo není dost blízko.',
    key_accept = 'Přijmout nesení',
    key_decline = 'Odmítnout nesení',
    help_carry = 'Nes nejbližšího hráče přes rameno, nebo ho polož.',
    help_piggyback = 'Nes nejbližšího hráče na zádech, nebo ho polož.',
}
