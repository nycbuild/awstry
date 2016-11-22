%w[ /home/realntwk/deployment-scripts/scripts/requestserver /home/realntwk/deployment-scripts/conf/requestserver ].each do |path|
  directory path do
  	mode 0750
  	owner 'realntwk'
  	group 'real'
  	recursive true
  	action :create
  end
end

cookbook_file "/home/realntwk/deployment-scripts//scripts/requestserver/deploy-post-requestserver.sh" do
  source "/scripts/requestserver/deploy-post-requestserver.sh"
  mode 0744
  owner 'realntwk'
  group 'real'
  action :create
end


cookbook_file "/home/realntwk/deployment-scripts/conf/requestserver/server.xml" do
  source "conf/requestserver/server.xml"
  mode 0744
  owner 'realntwk'
  group 'real'
  action :create
end

cookbook_file "/home/realntwk/deployment-scripts/conf/requestserver/sms.xml" do
  source "conf/requestserver/sms.xml"
  mode 0744
  owner 'realntwk'
  group 'real'
  action :create
end

