directory node['minecraft']['install_dir'] do
  recursive true
  user node['minecraft']['user']
  group node['minecraft']['group']
end

directory "#{node['minecraft']['install_dir']}/minecraft-init" do
  user node['minecraft']['user']
  group node['minecraft']['group']
end

directory "#{node['minecraft']['install_dir']}/worlds" do
  user node['minecraft']['user']
  group node['minecraft']['group']
end