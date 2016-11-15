directory "/home/realntwk/deployment-packages" do
  mode 0755
  owner 'realntwk'
  group 'real'
  recursive true
  action :create
end

cookbook_file "/home/realntwk/deployment-packages/jenkins.war" do
  source "jenkins.war"
  mode 0644
  action :create_if_missing
end

