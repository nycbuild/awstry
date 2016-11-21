#!/usr/bin/env bash

rm -f /home/realntwk/tomcat/webapps/ROOT

ln -s /srv/www/ROOT/current /home/realntwk/tomcat/webapps/ROOT

cd /home/realntwk/tomcat/bin

./shutdown.sh
./startup.sh

