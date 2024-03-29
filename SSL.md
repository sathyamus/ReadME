# SSL

#### Certificate Generation
  - Certificate Signing Request (CSR)
  - openssl req -config config.conf -new -keyout sathya.key -out sathya.csr
  
  - openssl rsa -in sathya-dev.key -pubout  (Remove the passphrase from existing key)
  - openssl rsa -in sathya-dev.key -out sathya-dev-new.key 
 
#### Verify CSR using Java(Keytool)
  - keytool -v -list -keystore trades-loader.jks


#### Keystore - SpringBoot

#### Keystore - k8s
    - kubectl create secret tls tls-${app_name}-{env} --cert=${app_pem_file}.pem --key=${app_private_key} -n=${k8s-namespace}
	  - kubectl create secret tls tls-${app_name}-{env} --cert ${app_pem_file}.pem --key ${app_private_key} -n ${k8s-namespace}

   -> Focus : 
         - Missing configuration (configMaps, secrets)
		 - SSL certification issues
		 - DNS re-direction

#### Keystore - Tomcat

server:
  port: 8443
  ssl:
    key-store: sathya-dev.jks
	key-store-password: changeit
	key-password: change