#!/bin/sh

JAVA_HOME=$HOME/java8
APP_HOME=$HOME/abhyas-service
APP_NAME=abhyas-service

APP_LOG=$APP_HOME/logs
APP_TMP=$APP_HOME/tmp

APP_JAR=$APP_HOME/$APP_NAME.jar
APP_HPROF=$APP_NAME.hprof
SERVICE_LOG=$APP_LOG/$APP_NAME.out
#APP_PROPERTIES=application.yml

mkdir -p APP_TMP
mkdir -p APP_LOG

JAVA_OPTS="-server"
JAVA_OPTS="$JAVA_OPTS -Djava.io.tmpdir=$APP_TMP"
JAVA_OPTS="$JAVA_OPTS -xms256M -xmx512m"
JAVA_OPTS="$JAVA_OPTS -XX:HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=$APP_HPROF"

echo "JAVA_OPTS=$JAVA_OPTS"

SPRING_BOOT_OPTS="$SPRING_BOOT_OPTS --spring.config.location=$APP_PROPERTIES"
echo "SPRING_BOOT_OPTS=$SPRING_BOOT_OPTS"

JAVA=$JAVA_HOME/bin/java8
nohup $JAVA $JAVA_OPTS -jar $APP_JAR $APP_JAR $SPRING_BOOT_OPTS > $SERVICE_LOG 2>&1 &
echo "--> $APP_NAME started..."
echo "tail 100f $"