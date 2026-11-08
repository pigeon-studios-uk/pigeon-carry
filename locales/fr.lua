--[[
    Pigeon Carry: French (Français).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'fr'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.fr = {
    title = 'Porter',
    request_carry = '{name} veut te porter. {accept} pour accepter, {decline} pour refuser.',
    request_piggyback = '{name} veut te porter sur son dos. {accept} pour accepter, {decline} pour refuser.',
    asked = 'Demande envoyée à {name}.',
    declined = '{name} a refusé.',
    busy = 'Cette personne est occupée.',
    no_one = 'Personne n\'est assez près.',
    key_accept = 'Accepter d\'être porté',
    key_decline = 'Refuser d\'être porté',
    help_carry = 'Porte le joueur le plus proche sur l\'épaule, ou dépose-le.',
    help_piggyback = 'Porte le joueur le plus proche sur ton dos, ou dépose-le.',
}
