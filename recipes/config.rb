node['minecraft']['configs'].each do |file, contents|
  file "#{node['minecraft']['install_dir']}/#{file}.json" do
    content contents.to_json
    user node['minecraft']['user']
    group node['minecraft']['group']
  end
end

template "#{node['minecraft']['install_dir']}/server.properties" do
  source 'server.properties.erb'
  user node['minecraft']['user']
  group node['minecraft']['group']
end

file "#{node['minecraft']['install_dir']}/eula.txt" do
  content "eula=#{node['minecraft']['eula'].to_str}"
  user node['minecraft']['user']
  group node['minecraft']['group']
end