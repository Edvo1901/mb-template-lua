fx_version 'cerulean'
game 'gta5'
lua54 'yes'

version '1.0.0'
description 'template'
author 'maybe'

shared_scripts {
    'config.lua',
    'shared/*.lua',
    '@ox_lib/init.lua'
}

client_scripts{
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
    'client/*.lua',
}

server_script {
    '@oxmysql/lib/MySQL.lua',
    'server/*.lua',
}