# Enabled and start firewalld service
service 'firewalld' do
  supports status: true, restart: true, reload: true
  action [ :enable, :start ]
end