#!/usr/bin/env bash

./shutdown.sh

rm -rf /home/realntwk/tomcat/webapps/sms

ln -s /srv/www/sms/current /home/realntwk/tomcat/webapps/sms

cd /home/realntwk/tomcat/bin

./startup.sh

