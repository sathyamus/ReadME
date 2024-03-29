### Java Memory Options

#### When running any Java Applications, use the below option to set memory options, if you are not passing any specific memory setting at the time of running application. This picks automatically, if you don't specify any inline options when running.

In Windows:

```
set _JAVA_OPTIONS=-Xms256m -Xmx1324m -Djava.io.tmpdir=C:\\temp
```

In Linux:
 
```sh
export _JAVA_OPTIONS='Xms256m -Xmx1324m -Djava.io.tmpdir=$HOME/tmp'
```

### Profiling Tools

	--> Java VisualVM (comes with JDK) (jvisualvm.exe) -- From Java9, we need to download this separately
	--> JConsole (comes with JDK) (jconsole.exe)
	--> Java Mission Control (comes with JDK) (jmc.exe) 
	--> Diagnostic Command Tool (comes with JDK) (jcmd.exe)
	--> Java Flight Recorder (JFR)
	--> JProfiler (Licensed tool)
	--> YProfiler (YourKit profiler, Licensed tool)
	--> jConsole

 
 If the target application that you need to instrument is running on JDK 11 or later, then run your application with the JVM argument: 
 --add-opens java.base/jdk.internal.misc=ALL-UNNAMED.
 
 If the target application that you need to instrument is running on JDK 8, then run your application with the JVM argument :
 -XX:+UnlockCommercialFeatures -XX:+FlightRecorder.

 -> For JMC8, jdk we need to point to OpenJDK17+, to make it running.

  Java Platform, Standard Edition, JDK Mission Control User Guide 
    --> https://www.oracle.com/java/technologies/javase/jmc8-install.html
    --> https://docs.oracle.com/en/java/java-components/jdk-mission-control/8/user-guide/
    --> https://docs.oracle.com/en/java/java-components/jdk-mission-control/8/user-guide/jdk-mission-control-users-guide.pdf
	

