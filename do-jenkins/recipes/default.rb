execute "do-jenkins" do
  user "realntwk"
  cwd "/home/realntwk/deployment-scripts"
  command "./deploy-jenkins.sh"
end
