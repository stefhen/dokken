if node[:platform] == 'ubuntu'
  default['dokken']['packages'] = %w[nmap rsync screen lftp netcat irssi]
end

if node[:platform] == 'centos'
  default['dokken']['packages'] = %w[nmap rsync screen lftp nc irssi]
end
