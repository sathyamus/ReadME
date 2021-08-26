## OAuth 2.0
 - Server (Producer) - To protect the application, resources
 - Client (Consumer) - To use the protected the application, resources
 -- Client ID and the Client Secret
 -- Scope
 -- Type (Implicit -- API to API, client_secret -- From Web / User session)

## Server 
```Java

```

## Client 
 ```Java

spring:
  security:
    oauth2:
      client:
        registration:
          github:
            clientId: github-client-id
            clientSecret: github-client-secret
          google:
            client-id: google-client-id
            client-secret: google-client-secret

 ```