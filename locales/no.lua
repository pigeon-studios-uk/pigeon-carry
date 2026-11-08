--[[
    Pigeon Carry: Norwegian (Norsk).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'no'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.no = {
    title = 'Bær',
    request_carry = '{name} vil bære deg. {accept} for å godta, {decline} for å avslå.',
    request_piggyback = '{name} vil bære deg på ryggen. {accept} for å godta, {decline} for å avslå.',
    asked = 'Spurte {name}.',
    declined = '{name} sa nei.',
    busy = 'De er opptatt akkurat nå.',
    no_one = 'Ingen er nær nok.',
    key_accept = 'Godta å bli båret',
    key_decline = 'Avslå å bli båret',
    help_carry = 'Bær den nærmeste spilleren over skulderen, eller sett dem ned.',
    help_piggyback = 'Bær den nærmeste spilleren på ryggen, eller sett dem ned.',
}
