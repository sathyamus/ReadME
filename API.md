# API


SpringBoot application
 - Performance
 - Scalability
 - Caching mechanism


Spring Boot Concurrency Basics: 

Maximum number of threads – This is the maximum number of threads that are allocated for dealing with requests to the application
	Use the property server.tomcat.max-threads to control how many threads you want to allow. 
	This is set to 0 by default which means- use the Tomcat default which is 200

Shared external resources – Calls to external shared resources such as databases

Asynchronous method calls – These are method calls that release the thread back to the thread-pool when waiting for a response
	https://spring.io/guides/gs/async-method/

Shared internal resources – Calls to internal shared resources- such as caches and potentially shared application state

https://www.e4developer.com/2018/03/30/introduction-to-concurrency-in-spring-boot/
