execute 'sed_httpd_config_1' do
  command "sudo sed -i -e 's/^[ \t]*//' /etc/httpd/conf/httpd.conf"
  action :run
end

execute 'sed_httpd_config_2' do
  command "sudo sed -i "s|IncludeOptional|#IncludeOptional|" /etc/httpd/conf/httpd.conf"
  action :run
end

execute 'sed_httpd_config_3' do
  command "sudo sed -i "s|#ServerName www.example.com:80|ServerName localhost|" /etc/httpd/conf/httpd.conf"
  action :run
end

execute 'sed_httpd_config_4' do
  command "sudo sed -i "s|DirectoryIndex index.html|DirectoryIndex index.html index.php|" /etc/httpd/conf/httpd.conf"
  action :run
end

execute 'php_config_into_apache' do
  command "echo "AddType application/x-httpd-php .php" | sudo tee -a /etc/httpd/conf/httpd.conf"
  action :run
end
