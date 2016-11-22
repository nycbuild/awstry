#!/usr/bin/env bash

./shutdown.sh

rm -rf /home/realntwk/tomcat/webapps/ROOT

ln -s /srv/www/root/current /home/realntwk/tomcat/webapps/ROOT

cp /home/realntwk/deployment-scripts/conf/ui/server.xml /home/realntwk/tomcat/conf/
cp /home/realntwk/deployment-scripts/conf/ui/ROOT.xml /home/realntwk/tomcat/conf/Catalina/localhost/

cd /home/realntwk/tomcat/bin

./startup.sh

