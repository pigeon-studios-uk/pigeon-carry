--[[
    Pigeon Carry: Brazilian Portuguese (Português do Brasil).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'pt-br'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales['pt-br'] = {
    title = 'Carregar',
    request_carry = '{name} quer carregar você. {accept} para aceitar, {decline} para recusar.',
    request_piggyback = '{name} quer levar você de cavalinho. {accept} para aceitar, {decline} para recusar.',
    asked = 'Você perguntou a {name}.',
    declined = '{name} disse não.',
    busy = 'Está ocupado agora.',
    no_one = 'Não há ninguém perto o suficiente.',
    key_accept = 'Aceitar ser carregado',
    key_decline = 'Recusar ser carregado',
    help_carry = 'Carregue o jogador mais próximo no ombro, ou coloque-o no chão.',
    help_piggyback = 'Leve o jogador mais próximo de cavalinho, ou coloque-o no chão.',
}
