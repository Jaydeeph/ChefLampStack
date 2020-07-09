# Executes this command which runs the script.
execute 'run_php_config_int_apache_script' do
  user 'root'
  command './php_config_into_apache.sh'
  action :run
end