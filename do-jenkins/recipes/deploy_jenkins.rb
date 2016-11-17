include_recipe 'deploy'

deploy 'jenkins' do
  user 'realntwk'
  deploy_to '/home/realntwk/tmp/'
  action :deploy
end