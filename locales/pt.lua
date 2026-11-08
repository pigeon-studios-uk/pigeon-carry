--[[
    Pigeon Carry: Portuguese (Português).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'pt'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.pt = {
    title = 'Carregar',
    request_carry = '{name} quer carregar-te. {accept} para aceitar, {decline} para recusar.',
    request_piggyback = '{name} quer levar-te às cavalitas. {accept} para aceitar, {decline} para recusar.',
    asked = 'Perguntaste a {name}.',
    declined = '{name} disse que não.',
    busy = 'Está ocupado agora.',
    no_one = 'Não há ninguém perto o suficiente.',
    key_accept = 'Aceitar ser carregado',
    key_decline = 'Recusar ser carregado',
    help_carry = 'Carrega o jogador mais próximo ao ombro, ou pousa-o.',
    help_piggyback = 'Leva o jogador mais próximo às cavalitas, ou pousa-o.',
}
