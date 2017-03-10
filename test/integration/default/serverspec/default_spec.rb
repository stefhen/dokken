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

if host_inventory['platform'] == 'ubuntu' do
  describe file('/usr/bin/java') do
    it { should exist }
  end
end
