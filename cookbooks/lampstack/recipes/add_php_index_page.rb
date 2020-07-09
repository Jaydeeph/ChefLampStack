# Places the index.php file in the following directory "/var/www/html/".
template '/var/www/html/index.php' do
  source 'index.php.erb'
  action :create
end
