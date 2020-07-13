# Creates an empty info.php file in the specifid location
file '/var/www/html/info.php' do
  content ''
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

# Places the index.php file in the following directory "/var/www/html/".
template '/var/www/html/index.php' do
  source 'index.php.erb'
  action :create
end
