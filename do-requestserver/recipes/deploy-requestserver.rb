include_recipe 'deploy'

node[:deploy].each do |application, deploy|

  opsworks_deploy_dir do
    user deploy[:user]
    group deploy[:group]
    path deploy[:deploy_to]
  end

  opsworks_deploy do
    deploy_data deploy
    app application
  end

	Chef::Log.info("!!!!! Deploy application ****** #{application} ****** with type #{deploy[:application_type]}")
	
	case #{application}
		
	when 'requestserver'
		execute "deploy-post-requestserver" do
			user "realntwk"
			cwd "/home/realntwk/deployment-scripts/scripts/requestserver"
			command "./deploy-post-requestserver.sh"
		end

	else
	
	end

end