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

	Chef::Log.debug("!!!!! Deploy application *** #{application} *** with type #{deploy[:application_type]}")
	
	case application
	when 'jenkins'
		execute "deploy-post-jenkins" do
			user "realntwk"
			cwd "/home/realntwk/deployment-scripts"
			command "./deploy-post-jenkins.sh"
		end
		
	when 'sms'
		execute "deploy-post-requestserver" do
			user "realntwk"
			cwd "/home/realntwk/deployment-scripts/requestserver"
			command "./deploy-post-requestserver.sh"
		end
	
	when 'ROOT'
		execute "deploy-post-ui" do
			user "realntwk"
			cwd "/home/realntwk/deployment-scripts/ui"
			command "./deploy-post-ui.sh"
		end
	
	else
	
	end

end