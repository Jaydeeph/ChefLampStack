firewalld_service 'http' do
  action :add
  zone 'public'
end
