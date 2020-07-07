package 'httpd' do
  action :install
end

file '/var/www/html/index.html' do
  content "This is a centos server 
  Hostname : #{node['hostname']}
  IPAddress : #{node['ipaddress']}
  Memory : #{node['memory']['total']}
  CPU : #{node['cpu']['0']['total']}"
end

service 'httpd' do
  action [ :enable , :start ]
end
