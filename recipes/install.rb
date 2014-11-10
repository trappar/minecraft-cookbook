# Set up a user/group for Minecraft to run under
include_recipe 'minecraft::user'

# Set up install directories
include_recipe 'minecraft::directories'

package 'default-jdk'
package 'screen'
package 'rsync'

remote_file "#{node['minecraft']['install_dir']}/#{node['minecraft']['server_file']}" do
  source node['minecraft']['server_download_file']
  user node['minecraft']['user']
  group node['minecraft']['group']
end