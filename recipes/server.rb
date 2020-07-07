package 'httpd' do
  action :install
end

file '/var/www/html/index.html' do
  content '<h1>This is an apache server</h1>'
end

service 'httpd' do
  action [ :enable , :start ]
end
