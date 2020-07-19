# Enables httpd service.
service 'httpd' do
  action :enable
end

# Starts httpd service
service 'httpd' do
  action :start
end

# Makes a backup copy of the http.conf file.
# remote_file 'backup_httpd.conf_file' do
#   path node['lampstack2']['apache']['httpdconf_backup']
#   source node['lampstack2']['apache']['httpdconf_location']
#   owner 'root'
#   group 'root'
# end
file node['lampstack2']['apache']['httpdconf_backup'] do
  owner 'root'
  group 'root'
  mode 0755
  content ::File.open(node['lampstack2']['apache']['httpdconf_location']).read
  action :create
end

# Places the index.php file in the following directory "/etc/httpd/conf/".
template node['lampstack2']['apache']['httpdconf_location'] do
  source 'httpd.conf.erb'
  action :create
end

# Add PHP configuration into Apache
execute 'php_config_into_apache' do
  command 'echo "AddType application/x-httpd-php .php" | tee -a /etc/httpd/conf/httpd.conf'
end
