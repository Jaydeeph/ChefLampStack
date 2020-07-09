# Makes a backup copy of the http.conf file.
remote_file '/etc/httpd/conf/httpd.conf' do
  source '/etc/httpd/conf/httpd.conf.original'
  action :create
end
