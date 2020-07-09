# Start mariadb service
service 'mariadb' do
  supports status: true, restart: true, reload: true
  action :start
end
