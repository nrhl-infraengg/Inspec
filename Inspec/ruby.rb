# # encoding: utf-8

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/


# FireEye Endpoint Agent service should be installed and running
describe service('FireEye Endpoint Agent') do
  it { should be_installed }
  it { should be_running }
end


# ESET should be installed and running
describe service('ESET Remote Administrator Agent') do
  it { should be_installed }
  it { should be_running }
end


# ESET file security should be installed
describe package('ESET File Security') do
  it { should be_installed }
end

# ESET service should be installed and running
describe service('ESET Service') do
  it { should be_installed }
  it { should be_running }
end

# Quest KACE Agent service should be installed and running
describe service('Quest KACE One Agent') do
  it { should be_installed }
  it { should be_running }
end

# Chocolatey should be installed
describe file('C:\ProgramData\chocolatey\choco.exe') do
  it { should exist }
end