include_recipe 'deploy'

node[:deploy].each do |application, deploy|
  opsworks_deploy do
    deploy_data deploy
    app application
  end
end

execute "deploy-post-requestserver" do
  user "realntwk"
  cwd "/home/realntwk/deployment-scripts"
  command "./deploy-post-requestserver.sh"
end

