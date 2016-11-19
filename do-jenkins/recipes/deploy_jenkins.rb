#deploy 'jenkins' do
#  repo 'git@github.com:acctname/private-repo.git'
#  user 'realntwk'
#  deploy_to '/home/realntwk/tmp'
#  action :deploy
#end


include_recipe 'deploy'

node[:deploy].each do |application, deploy|
  opsworks_deploy do
    deploy_data deploy
    app application
  end
end

#execute "deploy-post-jenkins" do
#  user "realntwk"
#  cwd "/home/realntwk/deployment-scripts"
#  command "./deploy-post-jenkins.sh"
#end


#
#node[:deploy].each do |application, deploy|
#  opsworks_deploy do
#    deploy_data deploy
#    app application
#  end
#end
