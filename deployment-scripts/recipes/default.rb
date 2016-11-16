directory "/home/realntwk/deployment-scripts" do
  mode 0755
  owner 'realntwk'
  group 'real'
  recursive true
  action :create
end

cookbook_file "/home/realntwk/deployment-scripts/deploy-requestserver.sh" do
  source "deploy-requestserver.sh"
  mode 0744
  action :create_if_missing
end

cookbook_file "/home/realntwk/deployment-scripts/deploy-jenkins.sh" do
  source "deploy-jenkins.sh"
  mode 0744
  action :create_if_missing
end
