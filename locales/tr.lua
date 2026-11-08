--[[
    Pigeon Carry: Turkish (Türkçe).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'tr'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales.tr = {
    title = 'Taşı',
    request_carry = '{name} seni taşımak istiyor. Kabul için {accept}, reddetmek için {decline}.',
    request_piggyback = '{name} seni sırtında taşımak istiyor. Kabul için {accept}, reddetmek için {decline}.',
    asked = '{name} kişisine soruldu.',
    declined = '{name} hayır dedi.',
    busy = 'Şu anda meşgul.',
    no_one = 'Yeterince yakında kimse yok.',
    key_accept = 'Taşınmayı kabul et',
    key_decline = 'Taşınmayı reddet',
    help_carry = 'En yakın oyuncuyu omzunda taşı ya da indir.',
    help_piggyback = 'En yakın oyuncuyu sırtında taşı ya da indir.',
}
