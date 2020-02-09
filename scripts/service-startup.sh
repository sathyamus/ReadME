#!/bin/sh

nohup java -jar server-user-management-0.0.1-SNAPSHOT-spring-boot.jar 2>&1 &

ps - ef | grep java
