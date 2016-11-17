include_recipe 'deploy'

node[:deploy].each do |application, deploy|
  opsworks_deploy do
    user 'realntwk'
    group 'real'
    path '/home/realntwk/tmp/'
    deploy_data deploy
    app application
  end
end
