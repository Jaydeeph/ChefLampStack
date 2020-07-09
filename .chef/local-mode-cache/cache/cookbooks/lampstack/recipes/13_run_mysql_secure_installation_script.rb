# Executes this command which runs the script.
execute 'secure_maridb_mysql' do
  user 'root'
  command './mysql_secure_installation.sh'
  action :run
end
