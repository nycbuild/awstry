directory "/home/realntwk/deployment-packages" do
  mode 0750
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

cookbook_file "/home/realntwk/deployment-packages/sms.war" do
  source "https://s3.amazonaws.com/nycbuild/requestserver/sms.war"
  mode 0644
  action :create_if_missing
end

