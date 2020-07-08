firewalld_service 'https' do
  action :add
  zone 'public'
end
