#
# Cookbook:: webserver
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
include_recipe 'ntpserver::default'
include_recipe 'webserver::apachepkg'
include_recipe 'webserver::apachefile'
include_recipe 'webserver::apacheservice'
