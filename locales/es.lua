--[[
    Pigeon Carry: Spanish (Español).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'es'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.es = {
    title = 'Cargar',
    request_carry = '{name} quiere cargarte. {accept} para aceptar, {decline} para rechazar.',
    request_piggyback = '{name} quiere llevarte a caballito. {accept} para aceptar, {decline} para rechazar.',
    asked = 'Le has preguntado a {name}.',
    declined = '{name} ha dicho que no.',
    busy = 'Ahora está ocupado.',
    no_one = 'No hay nadie lo bastante cerca.',
    key_accept = 'Aceptar que te carguen',
    key_decline = 'Rechazar que te carguen',
    help_carry = 'Carga al jugador más cercano al hombro, o bájalo.',
    help_piggyback = 'Lleva a caballito al jugador más cercano, o bájalo.',
}
