### Memory Tuning

 --> jVisualvm (Java VisualVM)
 --> jmc (Java Management Console)(Java Flight Recorder)
 --> jConsole
 
 
 
 If the target application that you need to instrument is running on JDK 11 or later, then run your application with the JVM argument: 
 --add-opens java.base/jdk.internal.misc=ALL-UNNAMED.
 
 If the target application that you need to instrument is running on JDK 8, then run your application with the JVM argument :
 -XX:+UnlockCommercialFeatures -XX:+FlightRecorder.


  Java Platform, Standard Edition, JDK Mission Control User Guide 
    --> https://docs.oracle.com/en/java/java-components/jdk-mission-control/8/user-guide/jdk-mission-control-users-guide.pdf
	
