
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
```sh
  <plugin>
  	<groupId>org.springframework.boot</groupId>
  	<artifactId>spring-boot-maven-plugin</artifactId>
  	<configuration>
  		<executable>true</executable>
  	</configuration>
  </plugin>
```

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

Git Tag :
```sh
   git tag
   git tag wiki-1.0.5-20210430
   git push origin wiki-1.0.5-20210430
```

--------------------------------------------------------------------

Feign Retryer -> If APIs are not accessible, to retry x times for getting the response

--------------------------------------------------------------------

Feign ErrorDecoder -> For capturing error message and enrich 

respose.status() --> Status Code
HttpStatus.valueOf(response.status()).isError() --> handles both 4xx, 5xx  
HttpStatus.valueOf(response.status()).is4xxClientError()
HttpStatus.valueOf(response.status()).is5xxServerError()

response.request.url() 
response.request.requestBody().asString() 

Util.toString(response.body().asReader())

--------------------------------------------------------------------

HttpStatus
 1xx - Informational 
 2xx - Sucessful 
 3xx - Redirection 
 4xx - Client Error 
 5xx - Server Error

--------------------------------------------------------------------

   spark.shuffle.service.enabled=true
   spark.dynamicAllocation.enabled=true
   spark.dynamicAllocation.minExecutors=0
   spark.dynamicAllocation.minExecutors=6

--------------------------------------------------------------------

#### Json String to Object

`
import com.google.gson.Gson;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
new Gson().fromJson(responseBody, Response.class);
JsonNode node = new ObjectMapper().readTree(string);
`

JsonPropertyOrder({
  "access_token",
  "scope",
  "token_type",
  "expires_in"
})

--------------------------------------------------------------------
