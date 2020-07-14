# Updates the system
execute 'yum_update' do
  command 'sudo yum -y update'
  action :run
end

# Installs the following package one by one using the array list provided.
node['lampstack2']['linux']['packages'].each do |package|
  package package do
    action :install
  end
end
