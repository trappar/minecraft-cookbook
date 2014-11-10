template "#{node['minecraft']['install_dir']}/minecraft-init/minecraft" do
  source 'minecraft.erb'
  user node['minecraft']['user']
  group node['minecraft']['group']
  mode 0755
end

link '/etc/init.d/minecraft' do
  to "#{node['minecraft']['install_dir']}/minecraft-init/minecraft"
end

template "#{node['minecraft']['install_dir']}/minecraft-init/config" do
  source 'config.erb'
  user node['minecraft']['user']
  group node['minecraft']['group']
end

file "#{node['minecraft']['install_dir']}/minecraft-init/exclude.list" do
  content node['minecraft']['backup']['excluded'].join("\n")
  user node['minecraft']['user']
  group node['minecraft']['group']
end

service 'minecraft' do
  supports restart: true
  action [:start, :enable]
end