require 'spec_helper'

describe package('nmap') do
  it { should be_installed }
end

describe package('rsync') do
  it { should be_installed }
end

describe package('tmux') do
  it { should be_installed }
end

describe package('screen') do
  it { should be_installed }
end

describe package('lftp') do
  it { should be_installed }
end
