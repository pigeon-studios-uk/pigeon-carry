--[[
    Pigeon Carry: Hungarian (Magyar).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'hu'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.hu = {
    title = 'Cipelés',
    request_carry = '{name} cipelni szeretne. {accept} az elfogadáshoz, {decline} az elutasításhoz.',
    request_piggyback = '{name} a hátán vinne. {accept} az elfogadáshoz, {decline} az elutasításhoz.',
    asked = 'Megkérdezted: {name}.',
    declined = '{name} nemet mondott.',
    busy = 'Most elfoglalt.',
    no_one = 'Senki sincs elég közel.',
    key_accept = 'Cipelés elfogadása',
    key_decline = 'Cipelés elutasítása',
    help_carry = 'Vidd a legközelebbi játékost a válladon, vagy tedd le.',
    help_piggyback = 'Vidd a legközelebbi játékost a hátadon, vagy tedd le.',
}
