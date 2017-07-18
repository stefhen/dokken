if node[:platform] == 'ubuntu'
  default['dokken']['packages'] = %w[nmap rsync screen lftp netcat]
end

if node[:platform] == 'centos'
  default['dokken']['packages'] = %w[nmap rsync screen lftp nc]
end
