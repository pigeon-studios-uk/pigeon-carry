--[[
    Pigeon Carry: German (Deutsch).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'de'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.de = {
    title = 'Tragen',
    request_carry = '{name} will dich tragen. {accept} zum Annehmen, {decline} zum Ablehnen.',
    request_piggyback = '{name} will dich huckepack nehmen. {accept} zum Annehmen, {decline} zum Ablehnen.',
    asked = '{name} gefragt.',
    declined = '{name} hat abgelehnt.',
    busy = 'Gerade beschäftigt.',
    no_one = 'Niemand ist nah genug.',
    key_accept = 'Tragen annehmen',
    key_decline = 'Tragen ablehnen',
    help_carry = 'Den nächsten Spieler über der Schulter tragen oder absetzen.',
    help_piggyback = 'Den nächsten Spieler huckepack nehmen oder absetzen.',
}
