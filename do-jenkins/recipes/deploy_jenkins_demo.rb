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

	case application
	when 'jenkins'
		execute "deploy-post-jenkins" do
			user "realntwk"
			cwd "/home/realntwk/deployment-scripts"
			command "./deploy-post-jenkins.sh"
		end
		
	when 'requestserver'
	
	else
	
	end

end