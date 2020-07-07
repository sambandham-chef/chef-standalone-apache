package 'httpd' do
  action :install
end

template '/var/www/html/index.html' do
  source 'index.html.erb'
  action :create
  notifies :restart , 'service[httpd]' , :immediately
end

remote_file '/var/www/html/dog_photo.jpg' do
  source 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.goodhousekeeping.com%2Flife%2Fpets%2Fg4531%2Fcutest-dog-breeds%2F&psig=AOvVaw3OgxgsDiYnqO6tL60Hm5ij&ust=1594203608943000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCND6q7H1uuoCFQAAAAAdAAAAABAJ'
end

service 'httpd' do
  action [ :enable , :start ]
end
