# Makes a backup copy of the http.conf file.
execute 'backup_httpd.conf' do
  command 'sudo cp /etc/httpd/conf/httpd.conf /etc/httpd/conf/httpd.conf.original'
  action :run
end
