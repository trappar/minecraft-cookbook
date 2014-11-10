Minecraft Cookbook
============
Installs and configures Minecraft
 
Requirements
------------
### Platforms
- Ubuntu (tested using 14.04)

### Cookbooks
- apt (soft dependency - make sure to include this in your run-list prior to this cookbook)

Attributes
----------

### General configuration
- `node['minecraft']['eula']` = must manually be set to true, by setting this you are agreeing to the [Minecraft EULA](https://account.mojang.com/documents/minecraft_eula), default `false` (string).
- `node['minecraft']['user']` = user the Minecraft server will run as, default `minecraft`.
- `node['minecraft']['group']` = group the Minecraft server will run as, default `minecraft`.
- `node['minecraft']['install_dir']` = location Minecraft will be installed to, default `/srv/minecraft`.
- `node['minecraft']['server_download_file']` = Minecraft server file to download, default `https://s3.amazonaws.com/Minecraft.Download/versions/1.8/minecraft_server.1.8.jar`.
- `node['minecraft']['server_file']` = what to save the Minecraft server file to locally, default `minecraft_server.jar`.

### Server configuration
- `node['minecraft']['init_mem']` = default `1024M`.
- `node['minecraft']['max_mem']` = default `1024M`.
- `node['minecraft']['backup']['excluded']` = an array of files to exclude when running backups, default `[]`.

### Minecraft configuration
- `node['minecraft']['server_properties']` = hash of all server properties to configure. (see [this](http://minecraft.gamepedia.com/Server.properties) for more information)
- `node['minecraft']['configs']['banned-ips']` = default `[]`.
- `node['minecraft']['configs']['banned-players']` = default `[]`.
- `node['minecraft']['configs']['ops']` = default `[]`.
- `node['minecraft']['configs']['usercache']` = default `[]`.
- `node['minecraft']['configs']['whitelist']` = default `[]`.


Recipes
-------
### default
Include the default recipe in a run list to have Minecraft completely installed and configured

### config
Adds all configuration files necessary for Minecraft to run

### install
Installs Minecraft and other needed packages

### service
Installs Minecraft as an init.d service and starts/enables it

Usage
-----

```ruby
name "minecraft"
description "Install Minecraft"
override_attributes(
  "minecraft" => {
    "eula" => "true"
  }
)
run_list(
  "recipe[apt]",
  "recipe[minecraft]"
)
```

## License and Authors

Author:: Jeff Way (<jeff.way@me.com>)
