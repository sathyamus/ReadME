
#### Java BUGs

1. Application crashes due to 'Internal Error (sharedRuntime.cpp:833)' 

https://confluence.atlassian.com/kb/application-crashes-due-to-internal-error-sharedruntime-cpp-833-caused-by-java-8-bug-740098867.html

Resolution

Upgrade to Java 8u60 or later.

2. TLS handshake failure due to missing SNI extension

extennsion server_name is missing when connecting to server

`
ssl_debug(6): Starting handshake (iSaSiLk)...
ssl_debug(6): Sending v3 client_hello message to <server>, requesting version <TLS version>...
ssl_debug(6): Sending extensions: renegotiation_info (XXXX), signature_algorithms (XX)
ssl_debug(6): IOException while handshaking: Connection reset
ssl_debug(6): Sending alert: Alert Fatal: handshake failure
`

https://bugs.openjdk.java.net/browse/JDK-8144566

https://apps.support.sap.com/sap/support/knowledge/en/2604240

https://stackoverflow.com/questions/30817934/extended-server-name-sni-extension-not-sent-with-jdk1-8-0-but-send-with-jdk1-7

Custom HostnameVerifier disables SNI extension

3. java.lang.OutOfMemoryError: Metaspace

Cause : 
Permgen Leak in JAXB due to recreation of JAXBContexts

https://issues.apache.org/jira/browse/CXF-2939

Resolution : 

-Dcom.sun.xml.bind.v2.bytecode.ClassTailor.noOptimize=true

