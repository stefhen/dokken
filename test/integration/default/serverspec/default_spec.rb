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

describe file('/usr/bin/java') do
  it { should exist }
end
