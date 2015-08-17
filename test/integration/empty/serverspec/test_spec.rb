require 'serverspec'
# require 'yaml'
# thing = YAML.load_file('../../../defaults/main.yml')
# Required by serverspec
set :backend, :exec

describe command('kitchen version') do
  its(:exit_status) { should eq 0 }
end

describe command('kitchen version') do
  its(:stdout) { should contain('1.4.2') }
end