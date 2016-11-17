include_recipe 'deploy'

node[:deploy].each do |application, deploy|
  opsworks_deploy_dir do
    user 'realntwk'
    group 'real'
    path '/home/realntwk/tmp/'
  end

  opsworks_deploy do
    deploy_data deploy
    app application
  end
end
