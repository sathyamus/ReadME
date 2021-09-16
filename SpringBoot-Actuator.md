## Spring Boot Actuator

 -- logfile
    Returns the contents of the logfile (if logging.file.name or logging.file.path properties have been set).

<groupld>org.springframework.boot</groupld>
<artifactId>spring-boot-starter-actuator</artifactId>

 -> management.endpoints.enabled—by—default
    The exclude property takes precedence over the include property.
 
 -> Writing Custom Health Indicators
	@Component
	public class MyHeaIthIndicator implements Healthlndicator {

 -> Loggers
   Spring Boot Actuator includes the ability to view and configure the log levels of your application at runtime.


https://docs.spring.io/spring-boot/docs/2.5.4/actuator-api/pdf/spring-boot-actuator-web-api.pdf
https://en.wikipedia.org/wiki/Cross-origin_resource_sharing
