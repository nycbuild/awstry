directory "/srv/www3/" do
  mode 0755
  owner 'root'
  group 'root'
  action :create
end

directory "/home/realntwk/deployment-scripts" do
  mode 0755
  owner 'realntwk'
  group 'real'
  recursive true
  action :create
end


