# This must be changed to true for this cookbook to work!
default['minecraft']['eula'] = 'false'

default['minecraft']['user'] = 'minecraft'
default['minecraft']['group'] = 'minecraft'
default['minecraft']['install_dir'] = '/srv/minecraft'

default['minecraft']['server_download_file'] = 'https://s3.amazonaws.com/Minecraft.Download/versions/1.8/minecraft_server.1.8.jar'
default['minecraft']['server_file'] = 'minecraft_server.jar'

default['minecraft']['init_mem'] = '1024M'
default['minecraft']['max_mem'] = '1024M'

# Files to be excluded from backups
default['minecraft']['backup']['excluded'] = []

# Server properties
default['minecraft']['server_properties'] = {
  'spawn-protection' => '16',
  'max-tick-time' => '60000',
  'generator-settings' => '',
  'force-gamemode' => 'false',
  'allow-nether' => 'true',
  'gamemode' => '0',
  'enable-query' => 'false',
  'player-idle-timeout' => '0',
  'difficulty' => '1',
  'spawn-monsters' => 'true',
  'op-permission-level' => '4',
  'resource-pack-hash' => '',
  'announce-player-achievements' => 'true',
  'pvp' => 'true',
  'snooper-enabled' => 'true',
  'level-type' => 'DEFAULT',
  'hardcore' => 'false',
  'enable-command-block' => 'false',
  'max-players' => '20',
  'network-compression-threshold' => '256',
  'max-world-size' => '29999984',
  'server-port' => '25565',
  'server-ip' => '',
  'spawn-npcs' => 'true',
  'allow-flight' => 'false',
  'level-name' => 'world',
  'view-distance' => '10',
  'resource-pack' => '',
  'spawn-animals' => 'true',
  'white-list' => 'false',
  'generate-structures' => 'true',
  'online-mode' => 'true',
  'max-build-height' => '256',
  'level-seed' => '',
  'enable-rcon' => 'false',
  'motd' => 'A Minecraft Server'
}

# These will be used to create all the other config files
default['minecraft']['configs']['banned-ips'] = []
default['minecraft']['configs']['banned-players'] = []
default['minecraft']['configs']['ops'] = []
default['minecraft']['configs']['usercache'] = []
default['minecraft']['configs']['whitelist'] = []