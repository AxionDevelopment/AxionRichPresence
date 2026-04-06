fx_version 'cerulean'
game 'gta5'

author 'AxionDevelopment | SpunkyDunkie'
description 'Axion Rich Presence'
version '1.0.0'

lua54 'yes'

shared_script 'configs/axionrichpresence.config.lua'

client_scripts {
    'axionrichpresence/client.lua'
}

server_scripts {
    'axionrichpresence/server.lua'
}

escrow_ignore { 
	'configs/axionrichpresence.config.lua' 
} 