#!/usr/bin/env bash

./shutdown.sh

rm -rf /home/realntwk/tomcat/webapps/ROOT

ln -s /srv/www/ROOT/current /home/realntwk/tomcat/webapps/ROOT

cd /home/realntwk/tomcat/bin

./startup.sh

