node['dokken']['packages'].each do |p|
  package p
end

if node[:platform] == 'ubuntu'
  include_recipe 'apt'
  include_recipe 'java'
end
