# Adds https firewall rule to firewalld.
firewalld_service 'https' do
  action :add
  zone 'public'
end
