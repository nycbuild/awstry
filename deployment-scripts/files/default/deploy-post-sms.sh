#!/usr/bin/env bash

rm -f /home/realntwk/tomcat/webapps/sms

ln -s /srv/www/sms/current /home/realntwk/tomcat/webapps/sms

cd /home/realntwk/tomcat/bin

./shutdown.sh
./startup.sh

