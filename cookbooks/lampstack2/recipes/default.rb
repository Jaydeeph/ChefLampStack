#
# Cookbook:: lampstack2
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
include_recipe 'lampstack2::linux'
include_recipe 'lampstack2::apache'
include_recipe 'lampstack2::php'
include_recipe 'lampstack2::mysql'

