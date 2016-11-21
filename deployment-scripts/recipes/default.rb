directory "/home/realntwk/deployment-scripts" do
  mode 0750
  owner 'realntwk'
  group 'real'
  recursive true
  action :create
end

cookbook_file "/home/realntwk/deployment-scripts/deploy-jenkins.sh" do
  source "deploy-jenkins.sh"
  mode 0744
  owner 'realntwk'
  group 'real'
  action :create
end

cookbook_file "/home/realntwk/deployment-scripts/deploy-post-jenkins.sh" do
  source "deploy-post-jenkins.sh"
  mode 0744
  owner 'realntwk'
  group 'real'
  action :create
end

cookbook_file "/home/realntwk/deployment-scripts/deploy-post-sms.sh" do
  source "deploy-post-sms.sh"
  mode 0744
  owner 'realntwk'
  group 'real'
  action :create
end

directory "/home/realntwk/deployment-scripts/conf/sms" do
  mode 0750
  owner 'realntwk'
  group 'real'
  recursive true
  action :create
end

cookbook_file "/home/realntwk/deployment-scripts/conf/sms/server.xml" do
  source "conf/sms/server.xml"
  mode 0744
  owner 'realntwk'
  group 'real'
  action :create
end

cookbook_file "/home/realntwk/deployment-scripts/conf/sms/sms.xml" do
  source "conf/sms/sms.xml"
  mode 0744
  owner 'realntwk'
  group 'real'
  action :create
end
