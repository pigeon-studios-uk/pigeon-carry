--[[
    Pigeon Carry: Estonian (Eesti).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'et'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.et = {
    title = 'Kandmine',
    request_carry = '{name} tahab sind kanda. {accept} nõustumiseks, {decline} keeldumiseks.',
    request_piggyback = '{name} tahab sind seljas kanda. {accept} nõustumiseks, {decline} keeldumiseks.',
    asked = 'Küsisid: {name}.',
    declined = '{name} keeldus.',
    busy = 'Nad on praegu hõivatud.',
    no_one = 'Kedagi pole piisavalt lähedal.',
    key_accept = 'Nõustu kandmisega',
    key_decline = 'Keeldu kandmisest',
    help_carry = 'Kanna lähimat mängijat õlal või pane ta maha.',
    help_piggyback = 'Kanna lähimat mängijat seljas või pane ta maha.',
}
