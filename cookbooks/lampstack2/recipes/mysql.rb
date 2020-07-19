# Enabled the database mariadb service.
service 'mariadb' do
  action :enable
end

# Places the secure_mysql.sh file in the root user directory".
template '/tmp/secure_mysql.sh' do
  mode '0777'
  owner 'root'
  source 'secure_mysql.sh.erb'
  action :create
end

execute 'run_secure_mysql_script' do
  command '/tmp/secure_mysql.sh \'testing new password\''
end

# Starts httpd service
service 'mariadb' do
  action :start
end
