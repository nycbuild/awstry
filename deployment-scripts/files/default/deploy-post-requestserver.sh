#!/usr/bin/env bash

ln -s /srv/www/requestserver/current /home/realntwk/tomcat/webapps/sms

cd /home/realntwk/tomcat/bin

./shutdown.sh
./startup.sh

