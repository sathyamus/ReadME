# Microservice Architecture

 - Increasing delivery speed
 - Improving evolvability 
 - Scalability

# API Gateway
 - Intelligent Routing
 - Security and Filter
 - Auditing and Logging requests
 - Request Enhacement
 - Load Balancing
 - Different APIs for diff clients, based on Client we can perform routing

# API

API is just the interface, and even more important to remember that the 
service consumer views the API as a contract, and they don’t care what’s 
behind it as long as they get what they need.

 - OpenAPI (Not Swagger)
 
### Major, minor versions
 - Its recomended not to maintain more than 2 major versions to keep maintenance / testing effort to ideal time.

SpringBoot application
 - Performance
 - Scalability
 - Caching mechanism
 - Compress payload when sending request (gzip)
 - Maintainability


Spring Boot Concurrency Basics: 

Maximum number of threads – This is the maximum number of threads that are allocated for dealing with requests to the application
	Use the property server.tomcat.max-threads to control how many threads you want to allow. 
	This is set to 0 by default which means- use the Tomcat default which is 200

Shared external resources – Calls to external shared resources such as databases

Asynchronous method calls – These are method calls that release the thread back to the thread-pool when waiting for a response
	https://spring.io/guides/gs/async-method/

Shared internal resources – Calls to internal shared resources- such as caches and potentially shared application state

https://www.e4developer.com/2018/03/30/introduction-to-concurrency-in-spring-boot/


### Spring Boot best practices 
    Use Auto-configuration 
    Use Spring Initializr for starting new Spring Boot projects 
    Consider creating your own auto-configuration for common organizational concerns 
    Structure your code correctly 
    Keep your @Controller’s clean and focused 
        Controllers should be stateless! Controllers are by default singletons and giving them any state can cause massive issues. 
        Controllers should not execute business logic but rely on delegation. 
        Controllers should deal with the HTTP layer of the application. This should not be passed down to Services. 
        Controllers should be oriented around a use-case / business-capability. 
    Build your @Service’s around business capabilities 
    Keep your business logic free of Spring Boot code 
    Favour Constructor Injection 
    Be familiar with the concurrency model 
    Externalise and mature your configuration management 
        Use a configuration server, something like Spring Cloud Config 
        Store all your configuration in environment variables (that could be provisioned based on git repository) 
    Provide global exception handling 
        https://www.baeldung.com/exception-handling-for-rest-with-spring 
    Use a logging framework 
    Use testing slices to make your testing easier and more focused 
        https://spring.io/blog/2016/08/30/custom-test-slice-with-spring-boot-1-4 
    @ConditionalOnProperty 
        - Need to create some beans conditionally based on the presence and the value of a configuration property. 
        - Dynamically instantiate the class based on a toggle. 
        - @ConditionalOnProperty(prefix = "notification", name = "xapi.fallback", havingValue = "true") 
        - matchIfMissing attribute, specifies whether the condition should match in case the property is not available. 
    Spring Profiles 
        - @Profile("dev") 
        - @Profile("!dev") 
        - <beans profile="dev"> 
        - servletContext.setInitParameter("spring.profiles.active", "dev"); 
        - @Autowired 
          private ConfigurableEnvironment env; 
          ... 
          env.setActiveProfiles("someProfile"); 
        - -Dspring.profiles.active=dev 
        - Context Parameter in web.xml 
        - spring.profiles.active configuration property 
        - * Avoid using of environment specific property injection in code, rather introduce the property and inject based on this property. 
    @ConditionalOnExpression("${module.enabled:true} and ${module.sub-module.enabled:true}") 
    @ConditionalOnBean 
    @ConditionalOnMissingBean 
    @ConditionalOnClass 
    @ConditionalOnMissingClass 
    @ConditionalOnJava(JavaVersion.EIGHT) 

    Exception Handling
        - server: 
        - error: include-message: always 
        @ResponseStatus
        @ExceptionHandler

    Traceability of logs with Spring Sleuth
        - Activated by default, once the dependency is added
        - zipkin (BigBrotherBird) UI

    Content negotiation
        - Add below dependency for xml support
        - XML is the first precedence over JSON, if we have below dependency
        - Usually, if we have only jackson-json dependency in classpath then JSON is the default
```Java
    <dependency>
      <groupId>com.fasterxml.jackson.dataformat</groupId>
      <artifactId>jackson-dataformat-xml</artifactId>
    </dependency>
```
    ComponentScan - wild card
     - Use wildcards to selectively include package names starting or ending with a certain string
     - When you specify basePackageClasses, Spring will scan the package (and subpackages) of the classes you specify.

    ConfigurationProperties
     - @ConfigurationProperties(prefix="com.snsystems")
     - @EnableConfigurationProperties(MailProperties.class)
     - @PropertySource("myproperties.properties")


Clean Architecture with Uncle Bob
https://www.e4developer.com/2018/07/14/discovering-clean-architecture-with-uncle-bob/


### Hazelcast 

    -> Cache implementation to reduce the frequent data retrievals
    -> Noticed in cluster its slow in responding to requests

    -> To reduce the API calls, if we can segregate the business process, then below ways to identify those are processed.
    => Store the business process in a DB (dis-advantage, need to have the DB in the respective project / repo should be managing the DB )
    => Store the business process in a message notification 
    => Update the business process status to API call and store 

### Caffeine

-> In-memory cache using a Google Guava inspired API https://github.com/ben-manes/caffeine

### Scalability

    -> Service instances
    -> Load Balancers
    -> Message queue / brokers
    -> Local cache

### Monitoring

    -> Health check 
       - Actuator 
       - Spring Admin Console
       - Mail alerts, if service is DOWN / UP
    -> Infra (CPU, RAM, Disk usage) 
    -> Log (ELK - Elastic search, Logstash, Kibana / Grafana)
       - Slf4j
       - Context (common parameters to identify / differentiate the logs)
       - Standardization (common pattern when logging) (Start events, Error events, Completion events etc)
    -> API monitoring (spans, status, corelation_id, inputs) 
    -> Filebeats
    -> ElastAlert
    -> Index setup, maintenance 

### Dashboards

     -> Wiki
     -> Services Health status
     -> Infrastructure 
     -> Open PRs
     -> Active Branches 
     -> Jenkins / Pipeline
        - Job status
     -> SONAR statistcs
     -> Security voilations (thirdparty tools like Checkmarx for analysing)   


### Reading the properties from application.yml

```
@Value(${single-path:xyz})
private String singlePath; 

@Value(${next-path:abc})
private String nextPath;

oozie-submit.sh
--files singlePath.json, nextPath.json

workflow.xml
   <file>singlePath.json</file>
   <file>nextPath.json</file>
```

### Feign Retry

### Spring RetryTemplate
  - If you don't specify content-type as application/json, application/xml will be the default content type because of dependency.

### Ribbon
  - Rule based load balancing
  
  
### Timeouts, very important while interacting with remote systems

  - RestTemplate default timeouts
    - By default, resttemplate uses timeout property from JDK installed on the machine which is always infinite in not overridden. 
	- To override the default JVM timeout, we can pass these properties during JVM start.
	
    -Dsun.net.client.defaultConnectTimeout=<TimeoutInMiliSec>
    -Dsun.net.client.defaultReadTimeout=<TimeoutInMiliSec>

--------------------------------------------

Samples
    https://github.com/GoogleCloudPlatform/microservices-demo

Principles & Best practices of REST API Design
    https://medium.com/dev-genius/best-practice-and-cheat-sheet-for-rest-api-design-6a6e12dfa89f

REST: Good Practices for API Design
    https://medium.com/hashmapinc/rest-good-practices-for-api-design-881439796dc9

