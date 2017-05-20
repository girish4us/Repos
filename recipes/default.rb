#
# Cookbook:: web
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
file 'Hello.txt' do
     action:create
     content "Good morning to you"
end

service "httpd" do
     action :start
end

template '/var/www/html/index.html' do
  source 'index.html.erb'
end
