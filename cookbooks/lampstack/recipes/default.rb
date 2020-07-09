#
# Cookbook:: lampstack
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
include_recipe 'lampstack::01_yum_update'
include_recipe 'lampstack::02_install_packages'
include_recipe 'lampstack::03_enable_start_firewalld_service'
include_recipe 'lampstack::04_enable_httpd_service'
include_recipe 'lampstack::05_enable_mariadb_service'
include_recipe 'lampstack::09_add_php_index_page'
include_recipe 'lampstack::10_backup_original_apache_config'
include_recipe 'lampstack::11_run_php_config_into_apache_script'
include_recipe 'lampstack::12_start_mariadb_service'
include_recipe 'lampstack::13_run_mysql_secure_installation_script'
include_recipe 'lampstack::14_start_httpd_service'
