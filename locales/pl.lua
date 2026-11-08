--[[
    Pigeon Carry: Polish (Polski).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'pl'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.pl = {
    title = 'Noszenie',
    request_carry = '{name} chce cię nieść. {accept}, aby przyjąć, {decline}, aby odmówić.',
    request_piggyback = '{name} chce cię nieść na barana. {accept}, aby przyjąć, {decline}, aby odmówić.',
    asked = 'Zapytano: {name}.',
    declined = '{name} odmówił.',
    busy = 'Są teraz zajęci.',
    no_one = 'Nikt nie jest wystarczająco blisko.',
    key_accept = 'Przyjmij noszenie',
    key_decline = 'Odmów noszenia',
    help_carry = 'Nieś najbliższego gracza na ramieniu albo go postaw.',
    help_piggyback = 'Nieś najbliższego gracza na barana albo go postaw.',
}
