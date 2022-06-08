
org.springframework.boot.context.ApplicationPidFileWriter
 - An ApplicationListener that saves application PID into file. 
This application listener will be triggered exactly once per JVM, and the file name can be 
overridden at runtime with a System property or environment variable named "PIDFILE" (or "pidfile") 
or using a spring.pid.file property in the Spring Environment.

```java
SpringApplication springApplication = new SpringApplication(DemoApplication.class); \
springApplication.addListeners(new ApplicationPidFileWriter()); \
springApplication.run(args);
```

https://docs.spring.io/spring-boot/docs/current/reference/html/deployment-install.html

```java
  <plugin>
  	<groupId>org.springframework.boot</groupId>
  	<artifactId>spring-boot-maven-plugin</artifactId>
  	<configuration>
  		<executable>true</executable>
  	</configuration>
  </plugin>
```

--------------------------------------------------------------------

@Value annotation will not map the property value for Static variables.

 --> If it has to be used for static methods, there is no way to get the value, as static methods will call before the Bean Initialization completion.
 --> If it has to be used in non-static methods, then below approach.

public class Toggle {
 @Value("{com.snsystems.toggle.enable})
 private boolean isToggleEnabled; 

 private static boolean toggleEnabled;

 @Value("{com.snsystems.toggle.enable})
 private boolean setToggle(boolean isToggleEnabled) {
   this.toggleEnabled = isToggleEnabled;
 } 
 
 public void displayToggle() {
 // Toggle.toggleEnabled
 }

}
--------------------------------------------------------------------

When manifest file doesn't exists....
```sh
 java -jar ./target/UnitTests-1.0-SNAPSHOT.jar
```
Error: Unable to access jarfile ./target/UnitTests-1.0-SNAPSHOT.jar
.......
ERROR: script returned exit code 1
Finished: FAILURE

--------------------------------------------------------------------

```sh
mvn help:evaluate -Dexpression=project.version
```

--------------------------------------------------------------------

Seems invalid characters...

 > git.exe rev-list --no-walk 7303c99d7e621bae93e7423eccfb52179a3ef4f8 # timeout=10
java.nio.file.InvalidPathException: Trailing char < > at index 75: C:\Users\SN\.jenkins\workspace\hello-test@script\Jenkinsfile-check-versions 



https://kinsta.com/knowledgebase/free-smtp-server/

--------------------------------------------------------------------

Java Concurrent util -- Executor Service \
Executor Service -> Submit -> ThreadGroup 

Execute Runnable
```java
ExecutorService executorService = Executors.newFixedThreadPool(10);

executorService.execute(new Runnable() {
    public void run() {
        System.out.println("Asynchronous task");
    }
});

executorService.shutdown();
```

Submit Runnable
```java
Future future = executorService.submit(new Runnable() {
    public void run() {
        System.out.println("Asynchronous task");
    }
});

future.get();  //returns null if the task has finished correctly.
```

```java
ExecutorService executorService1 = Executors.newSingleThreadExecutor();

ExecutorService executorService2 = Executors.newFixedThreadPool(10);

ExecutorService executorService3 = Executors.newScheduledThreadPool(10);
```

--------------------------------------------------------------------

Git : SSL setup
 - Download Certificate from Certificate Authority 
 - git config --global --add http.sslcainfo /c/Homeware/cacerts/cacerts-2.0.cer

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

Git Fetch / Merge :
```sh
   git fetch --all
   git merge origin/master
```
--------------------------------------------------------------------

Git Tag :
```sh
   git tag
   git tag wiki-1.0.5-20210430
   git push origin wiki-1.0.5-20210430
```

--------------------------------------------------------------------

Git fork management :
```sh
   git remote -v
   git fetch origin
   git fetch upstream
   git merge upstream/main

   git remote show
```

--------------------------------------------------------------------

Git user management  / Git Personal Access token(PAT) : 

```sh
   git config --global unset credential.helper
   git config --global credential.helper wincred 
```

--------------------------------------------------------------------

Git

```sh
   git config --global -add http.sslVersion tlsv1.2
   git config --global -l
   git config -l
```

In TortoiceGit, if the git Version is not good in the path then Settings --> General -> select the right git binary location.
This will fix any SSL issues.

--------------------------------------------------------------------

GitLab : 

cd existing_repo
git remote add origin https://gitlab.com/sathyamus/ReadME.git
git branch -M main
git push -uf origin main


--------------------------------------------------------------------

The seven rules of a great Git commit message

    Separate subject from body with a blank line
    Limit the subject line to 50 characters
    Capitalize the subject line
    Do not end the subject line with a period
    Use the imperative mood in the subject line
    Wrap the body at 72 characters
    Use the body to explain what and why vs. how

Credit: https://chris.beams.io/posts/git-commit/

--------------------------------------------------------------------

Git merge vs rebase :

  - Never use rebase for public branches.
  - rebase will not retain the commit history where merge does

```sh
   git checkout feature_branch
   git rebase release_branch
```

--------------------------------------------------------------------

HttpStatus
 1xx - Informational 
 2xx - Sucessful 
 3xx - Redirection 
 4xx - Client Error 
 5xx - Server Error

--------------------------------------------------------------------

Custom Http Headers
 - avoid underscore(_) in the header names to be able to get the header values properly
 - use names like run-id, context-label, Application-Name, Application-Type etc

--------------------------------------------------------------------

```sh
   spark.shuffle.service.enabled=true 
   spark.dynamicAllocation.enabled=true 
   spark.dynamicAllocation.minExecutors=0 
   spark.dynamicAllocation.minExecutors=6 
```

--------------------------------------------------------------------

```sh
   ln -s kafka.keytab mainkey.keytab
   --keytab "mainkey.keytab"
   --principal "${USER}" 
```
--------------------------------------------------------------------

#### Json String to Object

```java
import com.google.gson.Gson;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
new Gson().fromJson(responseBody, Response.class);
JsonNode node = new ObjectMapper().readTree(string);
```

JsonPropertyOrder({
  "access_token",
  "scope",
  "token_type",
  "expires_in"
})

--------------------------------------------------------------------

Display JSON object in JavaScript / TypeScript

```javascript
  console.log(JSON.stringify(obj)) 
    or 
  console.dir(obj)

  str = JSON.stringify(obj);
  str = JSON.stringify(obj, null, 4); // (Optional) beautiful indented output
  console.log(str); // Logs output to dev tools console
```

--------------------------------------------------------------------

--- New document separation in YAML file

--------------------------------------------------------------------

Base64 encoding
    ```sh 
    echo -n 'username' | base64
    ```

--------------------------------------------------------------------

DirtiesContext in Spring
 -- Clearing the test interaction when testing
 -- Tells the testing framework to close and recreate the context for later tests.

@DirtiesContext.ClassMode
@DirtiesContext(methodMode = MethodMode.AFTER_METHOD)

Class Level (ClassMode options for a test class define when the context is reset)

  - BEFORE_CLASS: Before current test class
  - BEFORE_EACH_TEST_METHOD: Before each test method in the current test class
  - AFTER_EACH_TEST_METHOD: After each test method in the current test class
  - AFTER_CLASS: After the current test class


Method Level (MethodMode options for an individual method define when the context is reset)

  - BEFORE_METHOD: Before the current test method
  - AFTER_METHOD: After the current test method


--------------------------------------------------------------------

```java
String.format("Hello %s", "Sathya");
MessageFormat.format("Hello {0}", "Sathya");
org.apache.commons.lang3.StringUtils.replace("'%(string)'", "string", "Sathya");
```

--------------------------------------------------------------------

Mockito :: 
In order to enable Mockito annotations (such as @Spy, @Mock, … ), we need to do one of the following:

 - Call the method MockitoAnnotations.initMocks(this) to initialize annotated fields
 - Use the built-in runner @RunWith(MockitoJUnitRunner.class)

--------------------------------------------------------------------

Mockito :: Set a Value of a Non-Public Field

```java
ReflectionTestUtils.setField(object, "propertyName", propertyValue);

Example:
ReflectionTestUtils.setField(resultsController, "resultsService", resultsService);
```

--------------------------------------------------------------------

Trim Time (from Timestamp (in millies to get only the date)
 - To avoid timezone differences in various regions (for tests etc)

```java
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
Calendar cal = Calendar.getInstance();
cal.setTimeInMillies(timeInMillies);
sdf.format(cal.getTime);
```

--------------------------------------------------------------------

ReentrantLock (java.util.concurrent.locks.ReentrantLock)
 - A reentrant mutual exclusion Lock with the same basic behavior and semantics as the implicit monitor lock accessed using synchronized methods and statements, but with extended capabilities.
 - Provides synchronization to methods while accessing shared resources.
 - Allows threads to enter into the lock on a resource more than once.

--------------------------------------------------------------------

https://crontab.cronhub.io/

0 00 1 * * *

The cron expression is made of five fields. Each field can have the following values.
*             *             *                         *               *
minute (0-59) hour (0 - 23) day of the month (1 - 31) month (1 - 12)  day of the week (0 - 6)

--------------------------------------------------------------------

log4j level order / priority

TRACE < DEBUG < INFO < WARN < ERROR < FATAL 

--------------------------------------------------------------------

log4j2 config :

 log4j2 --> -Dlog4jConfigurationFile
 log4j  --> -Dlog4jConfiguration=file://

 -Dlog4j2.debug = true
 
--------------------------------------------------------------------

Excluding Logs : As TcpIpConnection has more INFO logs, now setting filter to WARN as below.

 <logger name ="com.hazelcast.nio.tcp.TcpIpConnection">
      <level value="WARN"/>
 </logger>

--------------------------------------------------------------------

KeyGen

```sh
 ssh-keygen -b 2048 -t rsa
```

SSH private key is id_rsa, 
SSH public key would be id_rsa.pub

Then files will be generated in default path

Windows: C:/User/user_name/.ssh/id_rsa
Unix :  /home/user_name/.ssh/id_rsa 

--------------------------------------------------------------------

Unsupported protocol 
    ERROR_SSL_VERSION_OR_CIPHER_MISMATCH
	
 k8s -- Invalid TLS -- Associate TLS with the Certificate
 
 Try Incognito window in Web Browser .. to (un)safely open (known) / internal websites
 
--------------------------------------------------------------------

SpringBootAdmin (SBA)
  - Can be used to monitor / modify configurational parameters
  - Modify logging level
  - View Memory settings
  - View logs

--------------------------------------------------------------------

IntelliJ Ultimate 
  - HTTP Client for REST calls
    - Create, edit, and execute HTTP requests directly in the IntelliJ IDEA code editor.
    - HTTP requests are stored in .http and .rest files
    - Alternatively, use live templates. In the editor, you can press Ctrl+J to view the list of available templates.
    - Convert between cURL requests and the HTTP request in Editor format.

 https://www.jetbrains.com/help/idea/http-client-in-product-code-editor.html

--------------------------------------------------------------------

try-with-resources Statement

The try-with-resources statement is a try statement that declares one or more resources.

```Java
  static String readFirstLineFromFile(String path) throws IOException {
      try (FileReader fr = new FileReader(path);
           BufferedReader br = new BufferedReader(fr)) {
          return br.readLine();
      }
```  

Suppressed Exceptions

An exception can be thrown from the block of code associated with the try-with-resources statement.


--------------------------------------------------------------------

Handling InterruptedException

```Java
  public void run() {
      try {
          Thread.sleep(1000);
      } catch (InterruptedException e) {
          Thread.currentThread().interrupt();  //set the flag back to <code>true
      } 
  }
```  
do one of three things.
  1. Propagate the InterruptedException
  2. Restore the Interrupt (catch the InterruptedException and restore the interrupt status by calling the interrupt() method on the currentThread)
  3. Ignore the interruption within method, but restore the status upon exit 

References : 
    - https://www.baeldung.com/java-interrupted-exception
    - https://programming.guide/java/handling-interrupted-exceptions.html
    - https://docs.oracle.com/javase/tutorial/essential/concurrency/guardmeth.html
    - https://leon-wtf.github.io/doc/java-concurrency-in-practice.pdf
    - https://medium.com/javarevisited/6-multithreading-and-concurrency-books-every-java-programmer-should-read-b6a08d2aae54

--------------------------------------------------------------------

RequestHeader :

Default value for required is true, so not to block the caller of API, we need to make sure, to set as required false (non-blocking).

```java
    @RequestHeader(value = "run-id", required = false) String runId
```

Feign client ... setting Headers

  https://programmer.ink/think/feign-dynamic-setting-header-and-principle.html
  https://fullstackdeveloper.guru/2020/05/15/how-to-send-multiple-headers-using-open-feign/

--------------------------------------------------------------------

Hazelcast

NetworkConfig networkConfig = config.getNetworkConfig();

networkConfig.setReuseAddress(true).setPortAutoIncrement(true).setPortCount(20);

    Consider logging new HTTP connections with DEBUG or lower level
    https://github.com/hazelcast/hazelcast/issues/10924

    you can configure your logging framework to log at WARN level for these classes :
    com.hazelcast.nio.tcp.SocketAcceptorThread
    com.hazelcast.nio.tcp.TcpIpConnectionManager
    com.hazelcast.nio.tcp.TcpIpConnection
    Unfortunately that also means that you won't be able to see connection lifecycle information on client and members.


    Excessive logging when using liveness/readiness scripts in Kubernetes, etc.
    https://github.com/hazelcast/hazelcast/issues/12687



--------------------------------------------------------------------

IntelliJ Error when running unit test : Could not find or load main class ${surefireArgLine}

    IntelliJ 14.1.6 with mvn 3.3.9 Preferences -> Build,Execution,Deployment -> Build Tools -> Maven -> Running Tests
    Intellij 2018 : File > Settings > Build, Execution, Deployment > Build Tools > Maven > Running Tests
    For IntelliJ 2019 and above Settings-> Build,Execution,Deployment -> Build Tools -> Maven -> Running Tests

Uncheck argLine


"pom.xml" : configuration for maven-surefire-plugin:
    <argLine>-Xms256m -Xmx1024m -XX:PermSize=48m -XX:MaxPermSize=128m ${unitArgLine}</argLine>

Update of pom.xml solved my problem.
    <argLine>${surefire.argLine}</argLine>

    <plugin>
            <groupId>org.apache.maven.plugins</groupId>
            <artifactId>maven-surefire-plugin</artifactId>    
            <version>2.18.1</version>                 
            <configuration>
                <parallel>classes</parallel>
                <threadCount>10</threadCount>
                <workingDirectory>${project.build.directory}</workingDirectory>   
                <jvm>${env.JDK1_8_HOME}\bin\java</jvm>   
                <argLine>${surefire.argLine}</argLine>
            </configuration>
            <dependencies>
                <dependency>
                    <groupId>org.apache.maven.surefire</groupId>
                    <artifactId>surefire-junit4</artifactId>
                    <version>2.18.1</version>
                </dependency>
            </dependencies>
     </plugin>

--------------------------------------------------------------------



--------------------------------------------------------------------

