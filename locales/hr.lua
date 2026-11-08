--[[
    Pigeon Carry: Croatian (Hrvatski).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'hr'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.hr = {
    title = 'Nošenje',
    request_carry = '{name} te želi nositi. {accept} za prihvaćanje, {decline} za odbijanje.',
    request_piggyback = '{name} te želi nositi na leđima. {accept} za prihvaćanje, {decline} za odbijanje.',
    asked = 'Pitao si: {name}.',
    declined = '{name} je odbio.',
    busy = 'Trenutno su zauzeti.',
    no_one = 'Nitko nije dovoljno blizu.',
    key_accept = 'Prihvati nošenje',
    key_decline = 'Odbij nošenje',
    help_carry = 'Nosi najbližeg igrača preko ramena ili ga spusti.',
    help_piggyback = 'Nosi najbližeg igrača na leđima ili ga spusti.',
}
