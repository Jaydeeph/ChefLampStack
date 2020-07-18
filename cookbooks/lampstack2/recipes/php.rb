# Places the info.php file in the following directory "/var/www/html/".
template '/var/www/html/info.php' do
  owner 'root'
  group 'root'
  mode '0755'
  source 'info.php.erb'
  action :create
  end
  

# Places the index.php file in the following directory "/var/www/html/".
template '/var/www/html/index.php' do
  owner 'root'
  group 'root'
  mode '0755'
  source 'index.php.erb'
  action :create
end
