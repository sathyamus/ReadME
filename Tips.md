
org.springframework.boot.context.ApplicationPidFileWriter
	An ApplicationListener that saves application PID into file. 
This application listener will be triggered exactly once per JVM, and the file name can be 
overridden at runtime with a System property or environment variable named "PIDFILE" (or "pidfile") 
or using a spring.pid.file property in the Spring Environment.

SpringApplication springApplication = new SpringApplication(DemoApplication.class);
springApplication.addListeners(new ApplicationPidFileWriter());
springApplication.run(args);

https://docs.spring.io/spring-boot/docs/current/reference/html/deployment-install.html

<plugin>
	<groupId>org.springframework.boot</groupId>
	<artifactId>spring-boot-maven-plugin</artifactId>
	<configuration>
		<executable>true</executable>
	</configuration>
</plugin>

