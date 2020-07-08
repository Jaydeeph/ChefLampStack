#
# Cookbook:: lampstack
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
include_recipe 'lampstack::yum_update.rb'
include_recipe 'lampstack::install_packages.rb'
include_recipe 'lampstack::enable_httpd_service.rb'
include_recipe 'lampstack::enable_mariadb_service.rb'
include_recipe 'lampstack::reload_firewalld.rb'
include_recipe 'lampstack::add_http__firewalld.rb'
include_recipe 'lampstack::add_https_firewalld.rb'
include_recipe 'lampstack::add_php_index_page.rb'
include_recipe 'lampstack::backup_original_apache_config.rb'
include_recipe 'lampstack::'
include_recipe 'lampstack::'
