# Updates the system
execute 'yum_update' do
  command 'sudo yum -y update'
  action :run
end

# Installs the following package one by one using the array list provided.
%W('nano curl wget bind-utils telnet httpd mod_ssl openssl mariadb-server mariadb php php-mysql php-gd php-mbstring').each do |package|
  package package do
    action :install
  end
end
