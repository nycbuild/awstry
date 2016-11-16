#!/usr/bin/env bash

cp /home/realntwk/deployment-packages/jenkins.war /home/realntwk/tomcat/webapps/

cd /home/realntwk/tomcat/bin

./shutdown.sh
./startup.sh

