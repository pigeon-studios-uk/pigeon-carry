--[[
    Pigeon Carry: Finnish (Suomi).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'fi'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.fi = {
    title = 'Kanna',
    request_carry = '{name} haluaa kantaa sinua. {accept} hyväksyäksesi, {decline} kieltäytyäksesi.',
    request_piggyback = '{name} haluaa kantaa sinua reppuselässä. {accept} hyväksyäksesi, {decline} kieltäytyäksesi.',
    asked = 'Kysyit: {name}.',
    declined = '{name} kieltäytyi.',
    busy = 'He ovat juuri nyt kiireisiä.',
    no_one = 'Kukaan ei ole tarpeeksi lähellä.',
    key_accept = 'Hyväksy kantaminen',
    key_decline = 'Kieltäydy kantamisesta',
    help_carry = 'Kanna lähintä pelaajaa olalla tai laske hänet alas.',
    help_piggyback = 'Kanna lähintä pelaajaa reppuselässä tai laske hänet alas.',
}
