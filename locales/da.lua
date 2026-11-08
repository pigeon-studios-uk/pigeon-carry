--[[
    Pigeon Carry: Danish (Dansk).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'da'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.da = {
    title = 'Bær',
    request_carry = '{name} vil bære dig. {accept} for at acceptere, {decline} for at afvise.',
    request_piggyback = '{name} vil give dig en tur på ryggen. {accept} for at acceptere, {decline} for at afvise.',
    asked = 'Spurgte {name}.',
    declined = '{name} sagde nej.',
    busy = 'De er optaget lige nu.',
    no_one = 'Der er ingen tæt nok på.',
    key_accept = 'Accepter at blive båret',
    key_decline = 'Afvis at blive båret',
    help_carry = 'Bær den nærmeste spiller over skulderen, eller sæt dem ned.',
    help_piggyback = 'Giv den nærmeste spiller en tur på ryggen, eller sæt dem ned.',
}
