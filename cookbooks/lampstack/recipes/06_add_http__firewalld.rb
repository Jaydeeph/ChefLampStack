# Adds https firewall rule to firewalld.
firewalld_service 'http' do
  action :add
  zone 'public'
end
