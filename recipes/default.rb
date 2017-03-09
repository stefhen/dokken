node['dokken']['packages'].each do |p|
  package p
end

include_recipe 'java::openjdk'
