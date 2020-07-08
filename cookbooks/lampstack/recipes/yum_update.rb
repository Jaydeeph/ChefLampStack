execute 'yum_update' do
  command 'yum update -y'
  action :run
end
