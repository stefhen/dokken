require 'spec_helper'

describe package('nmap') do
  it { should be_installed }
end

describe package('rsync') do
  it { should be_installed }
end

describe package('screen') do
  it { should be_installed }
end

describe package('lftp') do
  it { should be_installed }
end

if host_inventory['platform'] == 'ubuntu'
  describe file('/usr/bin/java') do
    it { should exist }
  end

  describe package('netcat') do
    it { should be_installed }
  end
end

if host_inventory['platform'] == 'centos'
  describe package('nc') do
    it { should be_installed }
  end
end