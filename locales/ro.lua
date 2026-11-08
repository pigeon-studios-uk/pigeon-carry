--[[
    Pigeon Carry: Romanian (Română).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'ro'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.ro = {
    title = 'Cară',
    request_carry = '{name} vrea să te care. {accept} ca să accepți, {decline} ca să refuzi.',
    request_piggyback = '{name} vrea să te ia în spate. {accept} ca să accepți, {decline} ca să refuzi.',
    asked = 'L-ai întrebat pe {name}.',
    declined = '{name} a refuzat.',
    busy = 'E ocupat acum.',
    no_one = 'Nu e nimeni destul de aproape.',
    key_accept = 'Acceptă să fii cărat',
    key_decline = 'Refuză să fii cărat',
    help_carry = 'Cară cel mai apropiat jucător pe umăr sau lasă-l jos.',
    help_piggyback = 'Ia cel mai apropiat jucător în spate sau lasă-l jos.',
}
