require 'spec_helper'

# confirm the java install
describe command('java -version') do
  its(:stdout) { should match /java version \"1.7/ }
end

describe file('/etc/profile') do
  it { should contain "PATH=/usr/lib/jvm/jdk1.7.0_71/bin:$PATH" }
end

describe file('/atom_install64.sh') do
  it { should be_file }
end