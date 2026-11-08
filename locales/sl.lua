--[[
    Pigeon Carry: Slovenian (Slovenščina).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'sl'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.sl = {
    title = 'Nošenje',
    request_carry = '{name} te želi nositi. {accept} za sprejem, {decline} za zavrnitev.',
    request_piggyback = '{name} te želi nositi na hrbtu. {accept} za sprejem, {decline} za zavrnitev.',
    asked = 'Vprašal si: {name}.',
    declined = '{name} je zavrnil.',
    busy = 'Trenutno so zasedeni.',
    no_one = 'Nihče ni dovolj blizu.',
    key_accept = 'Sprejmi nošenje',
    key_decline = 'Zavrni nošenje',
    help_carry = 'Nosi najbližjega igralca čez ramo ali ga odloži.',
    help_piggyback = 'Nosi najbližjega igralca na hrbtu ali ga odloži.',
}
