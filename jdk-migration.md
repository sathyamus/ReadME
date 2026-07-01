## JDK Migration Issues

 - Java 8 to Java 17 
 - Java 8 to Java 21 (API)
 
### Migration to Java 17 with SpringBoot 3.3.8 and Spark 3.5.3

 - Fix NonFilteredFileExtension
   - Input length = 1 error while running tests with Java17 which has parquets, crc intermediate files
   Error : cannot access class sun.nio.ch.DirectBuffer (in module java.base) because module java.base does not export sun.nio.ch to unnamed module
   Fix : add VM argument ... --add-exports java.base/sun.nio.ch=ALL-UNNAMED

 - unfinished stubbing detected here then return () may be missing 
   - Fix : Look whether the Mockito return exists or not, if exists, some columns mapping might have missed
   - In Parquets for example, model may have introduced few new coulmns in the schema, but in the test response its not mapped and we may get above error.

 - java.lang.reflect.InaccessibleObjectException: Unable to make feild private boolean sun.nio.cs.StreamDecoder.haveLeftoverChar accessible: module java.base does not "open sun.nio.cs"
   - Fix : add VM argument ... --add-opens java.base/sun.nio.cs=ALL-UNNAMED
   - In Tests, Jenkins build .... add as argLine in <configuration> for <artifactId>maven-surefire-plugin<artifactId>

 - unfinished stubbing detected here then return () may be missing 
   - Fix : Look whether the Mockito return exists or not, if exists, some columns mapping might have missed
   - In Parquets for example, model may have introduced few new coulmns in the schema, but in the test response its not mapped and we may get above error.

   
#### Migration to Java 21 with SpringBoot 3.3.8

 - Fix 
