#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# Install Apache
package "apache2" do
  action :install
end

# start the Apache service

service "apache2" do
  action [:enable, :start]
end
# make sure the service starts on reboot

# write our homepage
cookbook_file "/var/www/index.html" do
  source "index.html"
  mode "0644"
end
