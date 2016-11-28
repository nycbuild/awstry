#!/usr/bin/env bash

./shutdown.sh

rm -rf /home/realntwk/tomcat/webapps/requestserver

ln -s /srv/www/requestserver/current /home/realntwk/tomcat/webapps/sms

cp /home/realntwk/deployment-scripts/conf/requestserver/server.xml /home/realntwk/tomcat/conf/
cp /home/realntwk/deployment-scripts/conf/ui/sms.xml /home/realntwk/tomcat/conf/Catalina/localhost/

cd /home/realntwk/tomcat/bin

./startup.sh

