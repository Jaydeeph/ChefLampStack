# Installs the following packages
yum_package 'yum install nano curl wget bind-utils telnet install httpd mod_ssl openssl mariadb-server mariadb php php-mysql php-gd php-mbstring firewalld' do
  action :install
end
