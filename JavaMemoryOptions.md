### Java Memory Options

#### When running any Java Applications, use the below option to set memory options, if you are not passing any specific memory setting at the time of running application. This picks automatically, if you don't specify any inline options when running.

In Windows:

set _JAVA_OPTIONS=-Xms256m -Xmx1324m -Djava.io.tmpdir=C:\\temp

In Linux:

export _JAVA_OPTIONS='Xms256m -Xmx1324m -Djava.io.tmpdir=$HOME/tmp'