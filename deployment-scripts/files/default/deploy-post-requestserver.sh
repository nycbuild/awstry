#!/usr/bin/env bash

rm /home/realntwk/tomcat/webapps/sms

ln -s /srv/www/requestserver/current /home/realntwk/tomcat/webapps/sms

cd /home/realntwk/tomcat/bin

./shutdown.sh
./startup.sh

