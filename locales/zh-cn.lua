--[[
    Pigeon Carry: Simplified Chinese (简体中文).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'zh-cn'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales['zh-cn'] = {
    title = '背人',
    request_carry = '{name} 想扛起你。按 {accept} 接受，按 {decline} 拒绝。',
    request_piggyback = '{name} 想背你。按 {accept} 接受，按 {decline} 拒绝。',
    asked = '已询问 {name}。',
    declined = '{name} 拒绝了。',
    busy = '对方现在没空。',
    no_one = '附近没有人。',
    key_accept = '接受被扛起',
    key_decline = '拒绝被扛起',
    help_carry = '把最近的玩家扛在肩上，或放下。',
    help_piggyback = '背起最近的玩家，或放下。',
}
