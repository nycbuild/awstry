%w[ /home/realntwk/deployment-scripts/scripts/ui /home/realntwk/deployment-scripts/conf/ui ].each do |path|
  directory path do
  	mode 0750
  	owner 'realntwk'
  	group 'real'
  	recursive true
  	action :create
  end
end

cookbook_file "/home/realntwk/deployment-scripts/scripts/ui/deploy-post-ui.sh" do
  source "scripts/ui/deploy-post-ui.sh"
  mode 0744
  owner 'realntwk'
  group 'real'
  action :create
end


cookbook_file "/home/realntwk/deployment-scripts/conf/ui/server.xml" do
  source "conf/ui/server.xml"
  mode 0744
  owner 'realntwk'
  group 'real'
  action :create
end

cookbook_file "/home/realntwk/deployment-scripts/conf/ui/ROOT.xml" do
  source "conf/ui/ROOT.xml"
  mode 0744
  owner 'realntwk'
  group 'real'
  action :create
end

