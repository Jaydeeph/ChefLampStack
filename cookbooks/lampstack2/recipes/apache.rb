# Enables httpd service.
service 'httpd' do
  action :enable
end

# Starts httpd service
service 'httpd' do
  action :start
end

# Makes a backup copy of the http.conf file.
remote_file 'backup_httpd.conf_file' do
  path '/etc/httpd/conf/httpd.conf.original'
  source '/etc/httpd/conf/httpd.conf'
  owner 'root'
  group 'root'
end

# Places the index.php file in the following directory "/var/www/html/".
template '/etc/httpd/conf/httpd.conf' do
  source 'httpd.conf.erb'
  action :create
end

# Add PHP configuration into Apache
execute 'php_config_into_apache' do
  command 'echo "AddType application/x-httpd-php .php" | sudo tee -a /etc/httpd/conf/httpd.conf'
end
