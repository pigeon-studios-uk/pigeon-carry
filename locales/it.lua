--[[
    Pigeon Carry: Italian (Italiano).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'it'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.it = {
    title = 'Trasporta',
    request_carry = '{name} vuole portarti in spalla. {accept} per accettare, {decline} per rifiutare.',
    request_piggyback = '{name} vuole portarti a cavalcioni. {accept} per accettare, {decline} per rifiutare.',
    asked = 'Hai chiesto a {name}.',
    declined = '{name} ha detto di no.',
    busy = 'Ora è occupato.',
    no_one = 'Non c\'è nessuno abbastanza vicino.',
    key_accept = 'Accetta di essere portato',
    key_decline = 'Rifiuta di essere portato',
    help_carry = 'Porta in spalla il giocatore più vicino, o mettilo giù.',
    help_piggyback = 'Porta a cavalcioni il giocatore più vicino, o mettilo giù.',
}
