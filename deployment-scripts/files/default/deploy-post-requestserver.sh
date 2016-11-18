#!/usr/bin/env bash

ln -s /srv/www/jenkins/current /home/realntwk/tomcat/webapps/jenkins

cd /home/realntwk/tomcat/bin

./shutdown.sh
./startup.sh

