# Enabled the database mariadb service.
service 'mariadb' do
  action :enable
end

# Places the secure_mysql.sh file in the root user directory".
template '/root/secure_mysql.sh' do
  mode '0777'
  owner 'root'
  source 'secure_mysql.sh.erb'
  action :create
end

execute 'apache_configtest' do
  command '~./secure_mysql.sh \'testing new password\''
end

# Runs the following bash script. The script uses spawn and expect linux script which enables to use mysql_secure_installation for automation
# bash 'secure_mariadb_mysql' do
#   cwd ::Dir.pwd
#   code <<-EOH
#     MYSQL_ROOT_PASSWORD=testing123
#     SECURE_MYSQL=$(expect -c "
#     set timeout 10
#     spawn mysql_secure_installation
#     expect \"Enter current password for root (enter for none):\"
#     send \"$MYSQL\r\"
#     expect \"Change the root password?\"
#     send \"n\r\"
#     expect \"Remove anonymous users?\"
#     send \"y\r\"
#     expect \"Disallow root login remotely?\"
#     send \"y\r\"
#     expect \"Remove test database and access to it?\"
#     send \"y\r\"
#     expect \"Reload privilege tables now?\"
#     send \"y\r\"
#     expect eof
#     ")

#     echo "$SECURE_MYSQL"
#     aptitude -y purge expect
#   EOH
# end

# Starts httpd service
service 'mariadb' do
  action :start
end