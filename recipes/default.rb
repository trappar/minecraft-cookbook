#
# Cookbook Name:: minecraft
# Recipe:: default
#
# Copyright (C) 2014 Trappar
#
# All rights reserved - Do Not Redistribute
#

# Install Minecraft and necessary packages
include_recipe 'minecraft::install'

# Add all necessary config files
include_recipe 'minecraft::config'

# Add configuration to make Minecraft run as a service, then start/enable it
include_recipe 'minecraft::service'