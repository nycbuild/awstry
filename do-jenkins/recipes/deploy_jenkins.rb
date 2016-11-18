#deploy 'jenkins' do
#  repo 'git@github.com:acctname/private-repo.git'
#  user 'realntwk'
#  deploy_to '/home/realntwk/tmp'
#  action :deploy
#end


include_recipe 'deploy'

node[:deploy].each do |application, deploy|
	deploy 'jenkins' do
  		user 'realntwk'
  		deploy_to '/home/realntwk/tmp'
  		action :deploy
	end
end


#
#node[:deploy].each do |application, deploy|
#  opsworks_deploy do
#    deploy_data deploy
#    app application
#  end
#end
