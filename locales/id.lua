--[[
    Pigeon Carry: Indonesian (Bahasa Indonesia).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'id'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.id = {
    title = 'Gendong',
    request_carry = '{name} ingin menggendongmu. {accept} untuk menerima, {decline} untuk menolak.',
    request_piggyback = '{name} ingin menggendongmu di punggung. {accept} untuk menerima, {decline} untuk menolak.',
    asked = 'Bertanya ke {name}.',
    declined = '{name} menolak.',
    busy = 'Mereka sedang sibuk.',
    no_one = 'Tidak ada yang cukup dekat.',
    key_accept = 'Terima digendong',
    key_decline = 'Tolak digendong',
    help_carry = 'Gendong pemain terdekat di bahu, atau turunkan.',
    help_piggyback = 'Gendong pemain terdekat di punggung, atau turunkan.',
}
