name             'minecraft'
maintainer       'Jeff Way'
maintainer_email 'jeff.way@me.com'
license          'All rights reserved'
description      'Installs/Configures Minecraft'
long_description 'Installs/Configures Minecraft'
version          '0.1.0'

recipe 'minecraft', 'Installs/Configures Minecraft'
recipe 'minecraft::config', 'Adds all configuration files necessary for Minecraft to run'
recipe 'minecraft::install', 'Installs Minecraft and other needed packages'
recipe 'minecraft::service', 'Installs Minecraft as an init.d service and starts/enables it'

recipe 'minecraft::user', 'Used internally to set up Minecraft user/group'
recipe 'minecraft::directories', 'Used internally to set up working directories'

supports 'ubuntu'