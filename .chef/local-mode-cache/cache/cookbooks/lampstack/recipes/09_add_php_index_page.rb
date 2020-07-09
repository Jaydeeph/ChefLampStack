# Clears the contents of info.php
execute 'secure_maridb_mysql' do
  user 'root'
  command 'sudo echo "" | sudo tee /var/www/html/info.php'
  action :run
end

# Places the index.php file in the following directory "/var/www/html/".
template '/var/www/html/index.php' do
  source 'index.php.erb'
  action :create
end
