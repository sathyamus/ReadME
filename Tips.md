
org.springframework.boot.context.ApplicationPidFileWriter
 - An ApplicationListener that saves application PID into file. 
This application listener will be triggered exactly once per JVM, and the file name can be 
overridden at runtime with a System property or environment variable named "PIDFILE" (or "pidfile") 
or using a spring.pid.file property in the Spring Environment.

```sh
SpringApplication springApplication = new SpringApplication(DemoApplication.class); \
springApplication.addListeners(new ApplicationPidFileWriter()); \
springApplication.run(args);
```

https://docs.spring.io/spring-boot/docs/current/reference/html/deployment-install.html

<plugin>
	<groupId>org.springframework.boot</groupId>
	<artifactId>spring-boot-maven-plugin</artifactId>
	<configuration>
		<executable>true</executable>
	</configuration>
</plugin>


========

When manifest file doesn't exists....
```sh
 java -jar ./target/UnitTests-1.0-SNAPSHOT.jar
```
Error: Unable to access jarfile ./target/UnitTests-1.0-SNAPSHOT.jar
.......
ERROR: script returned exit code 1
Finished: FAILURE

===========

```sh
mvn help:evaluate -Dexpression=project.version
```
============

Seems invalid characters...

 > git.exe rev-list --no-walk 7303c99d7e621bae93e7423eccfb52179a3ef4f8 # timeout=10
java.nio.file.InvalidPathException: Trailing char < > at index 75: C:\Users\SN\.jenkins\workspace\hello-test@script\Jenkinsfile-check-versions 



https://kinsta.com/knowledgebase/free-smtp-server/

--------------------------------------------------------------------

Java Concurrent util -- Executor Service \
Executor Service -> Submit -> ThreadGroup 

Execute Runnable
```sh
ExecutorService executorService = Executors.newFixedThreadPool(10);

executorService.execute(new Runnable() {
    public void run() {
        System.out.println("Asynchronous task");
    }
});

executorService.shutdown();
```

Submit Runnable
```sh
Future future = executorService.submit(new Runnable() {
    public void run() {
        System.out.println("Asynchronous task");
    }
});

future.get();  //returns null if the task has finished correctly.
```

```sh
ExecutorService executorService1 = Executors.newSingleThreadExecutor();

ExecutorService executorService2 = Executors.newFixedThreadPool(10);

ExecutorService executorService3 = Executors.newScheduledThreadPool(10);
```

--------------------------------------------------------------------

Git : Automatic deletion of head branches after the merge
 - Git -> Repository -> Settings 
 - select the checkbox to Automatic deletion of head branches after the merge

--------------------------------------------------------------------

Git Tools :
 - TortoiceGit
 - Git bash
 - sourcetreeapp

 --------------------------------------------------------------------

