# API


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


Spring Boot best practices
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
   - Context (common parameters to identify / differentiate the logs)
   - Standardization (common pattern when logging) (Start events, OnError events, Completion events etc)
-> API monitoring (spans, status, corelation_id, inputs) 
-> Filebeats
-> ElastAlert
-> Index setup, maintenance 

### Dashboards

 -> Wiki
 -> Services Heath status
 -> Infrastructure 
 -> Open PRs
 -> Active Branches 
 -> Jenkins / Pipeline
    - Job status
 -> SONAR statistcs
 -> Security voilations (thirdparty tools like Checkmarx for analysing)   
