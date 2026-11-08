--[[
    Pigeon Carry: Dutch (Nederlands).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'nl'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.nl = {
    title = 'Dragen',
    request_carry = '{name} wil je dragen. {accept} om te accepteren, {decline} om te weigeren.',
    request_piggyback = '{name} wil je op de rug nemen. {accept} om te accepteren, {decline} om te weigeren.',
    asked = '{name} gevraagd.',
    declined = '{name} zei nee.',
    busy = 'Ze zijn nu bezig.',
    no_one = 'Er is niemand dichtbij genoeg.',
    key_accept = 'Gedragen worden accepteren',
    key_decline = 'Gedragen worden weigeren',
    help_carry = 'Draag de dichtstbijzijnde speler over je schouder, of zet ze neer.',
    help_piggyback = 'Neem de dichtstbijzijnde speler op je rug, of zet ze neer.',
}
