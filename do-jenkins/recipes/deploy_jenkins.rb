include_recipe 'deploy'

node[:deploy].each do |application, deploy|
  deploy_to '/home/realntwk/tmp'

  opsworks_deploy_dir do
    user 'realntwk'
    group 'real'
  end

  opsworks_deploy do
    deploy_data deploy
    app application
  end
end
