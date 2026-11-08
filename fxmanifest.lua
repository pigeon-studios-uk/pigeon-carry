fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name 'pigeon-carry'
author 'Pigeon Studios'
description 'Carry another player over your shoulder or on your back, once they accept, checked by the server.'
version '1.0.0'
repository 'https://github.com/pigeon-studios-uk/pigeon-carry'

-- Pigeon Studios version registry entry, read by server/version_check.lua.
pigeon_slug 'pigeon-carry'

shared_script 'configuration/config.lua'

client_scripts {
    'locales/*.lua',
    'client/main.lua',
}

server_scripts {
    'server/main.lua',
    'server/version_check.lua',
}
