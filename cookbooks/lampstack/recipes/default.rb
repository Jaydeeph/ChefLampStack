#
# Cookbook:: lampstack
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
include_recipe 'lampstack::01_yum_update.rb'
include_recipe 'lampstack::02_install_packages.rb'
include_recipe 'lampstack::03_enable_start_firewalld_service.rb'
include_recipe 'lampstack::04_enable_httpd_service.rb'
include_recipe 'lampstack::05_enable_mariadb_service.rb'
include_recipe 'lampstack::06_add_http__firewalld.rb'
include_recipe 'lampstack::07_add_https_firewalld.rb'
include_recipe 'lampstack::08_reload_firewalld.rb'
include_recipe 'lampstack::09_add_php_index_page.rb'
include_recipe 'lampstack::10_backup_original_apache_config.rb'
include_recipe 'lampstack::11_run_php_config_into_apache_script.rb'
include_recipe 'lampstack::12_start_httpd_service.rb'
include_recipe 'lampstack::13_run_mysql_secure_installation_script.rb'
include_recipe 'lampstack::14_start_httpd_service.rb'