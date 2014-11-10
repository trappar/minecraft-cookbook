user node['minecraft']['user']

group node['minecraft']['group'] do
  action :modify
  members node['minecraft']['user']
  append true
end