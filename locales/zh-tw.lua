--[[
    Pigeon Carry: Traditional Chinese (繁體中文).

    Translated from locales/en.lua, which has the notes on each line. If something reads
    wrong, please send a fix (see the README's Contributing section). Set Config.Locale = 'zh-tw'
    to use it, or leave it on 'auto' and set ox_lib's language.
]]

Locales = Locales or {}

Locales['zh-tw'] = {
    title = '背人',
    request_carry = '{name} 想扛起你。按 {accept} 接受，按 {decline} 拒絕。',
    request_piggyback = '{name} 想背你。按 {accept} 接受，按 {decline} 拒絕。',
    asked = '已詢問 {name}。',
    declined = '{name} 拒絕了。',
    busy = '對方現在沒空。',
    no_one = '附近沒有人。',
    key_accept = '接受被扛起',
    key_decline = '拒絕被扛起',
    help_carry = '把最近的玩家扛在肩上，或放下。',
    help_piggyback = '背起最近的玩家，或放下。',
}
