### secure secrets and passwords in SpringBoot?

```yml
spring:
 datasource:
 password: secret@abc
``` 



##### jasypt-maven-dependency

```
<dependency>
 <groupId>com.github.ulisesbocchio</groupId>
 <artifactId>jasypt-spring-boot-starter</artifactId>
 <version>LATEST</version>
</dependency>
```

```sh
java -cp ~/.m2/repository/org/jasypt/jasypt/1.9.2/jasypt-1.9.2.jar org.jasypt.intf.cli.JasyptPBEStringEncryptionCLI input="EncryptionKey@642" password=sms-app-enc-key642 algorithm=PBEWITHMD5ANDDES
```

```yml
spring:
  datasource:
    password: ENC(UAAeT+y19eRr4yhWOjLyMR2lacgjppmBItLRUQusGAfz9yvVrsxp9g==)
```

```sh
java -jar -Dapplication.properties=application.yaml -Djasypt.encryptor.password=dev-env-secret springboot_app.jar
```

Credits :

https://www.baeldung.com/spring-boot-jasypt
https://medium.com/@sun30nil/how-to-secure-secrets-and-passwords-in-springboot-90c952961d9
https://medium.com/@mail2rajeevshukla/hiding-encrypting-database-password-in-the-application-properties-34d59fe104eb

