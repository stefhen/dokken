require 'spec_helper'

packages = %w[nmap rsync screen lftp irssi]

packages.each do |p|
  describe package(p) do
    it { should be_installed }
  end
end

if host_inventory['platform'] == 'ubuntu'
  describe file('/usr/bin/java') do
    it { should exist }
  end

  describe package('netcat') do
    it { should be_installed }
  end
end

if host_inventory['platform'] == 'redhat'
  describe package('nc') do
    it { should be_installed }
  end
end