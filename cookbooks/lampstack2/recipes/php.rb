# Places the info.php file in the following directory "/var/www/html/". If file exist, it will only replace if the contents of the file is changed. 
template node['lampstack2']['php']['info_php_location'] do
  owner 'root'
  group 'root'
  mode '0755'
  source 'info.php.erb'
  action :create
  end
  

# Places the index.php file in the following directory "/var/www/html/". If file exist, it will only replace if the contents of the file is changed. 
template node['lampstack2']['php']['index_php_location'] do
  owner 'root'
  group 'root'
  mode '0755'
  source 'index.php.erb'
  action :create
end
