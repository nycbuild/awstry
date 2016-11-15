#!/usr/bin/env bash

cp /home/realntwk/deployment-packages/jenkins.war /home/realntwk/tomcat/current/webapp/

cd /home/realntwk/tomcat/current/bin

./shutdown.sh
./startuo.sh

