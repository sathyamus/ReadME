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

