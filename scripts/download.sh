#!/bin/bash

ls -l

EmailAlertAPIVersion="0.0.1-SNAPSHOT"
EmailAlertAPIPackageName="emailAlerts"

echo "Executing $EmailAlertAPIPackageName in $EmailAlertAPIVersion"

if [ ! -f "$EmailAlertAPIPackageName" ]
then
    echo "downloading"
    curl /local/path/${EmailAlertAPIPackageName}.jar -o ${}EmailAlertAPIPackageName}.jar
 else 
 	echo "Package is already present"
fi

nohup $JAVA_HOME/bin/java -jar $EmailAlertAPIPackageName --spring.config.location=./ > output.out 2 >error.err < /dev/null &