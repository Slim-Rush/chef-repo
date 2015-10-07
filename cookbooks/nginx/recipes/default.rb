#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package 'nginx' do
  action :install
end

service 'nginx' do
  action [:start, :enable]
end

cookbook_file '/var/www/index.html' do
  source 'index.html'
  mode '0644'
end
