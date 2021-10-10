
Secure Access to Virtual Networks on Azure


Storage accounts --> laba46a027579e687a8  --> File shares --> lab --> id_rsa .... download


appvm01 --> connect with Bastion --> select SSH private key from local file --> select the file from local -> connect

-> will open a popup, if its bloced by the browser, allow it 

-> Terminal will open in the browser window

----------


Basics
Subscription  		xxxx
Resource group      pluxxxx
Region 				East US
Azure Firewall Sku 	Standard
Firewall Policy Name azure-fw-policy
Firewall Policy Sku Standard
Virtual network 	app-vnet
Address space 		10.0.0.0/16
Firewall public IP address 			azure-fw-pip
Availability zone  	None


-------

Create Route table

Subscription 		xxxx
Resource group 		pluxxxx
Region 				East US
Name 				routetable01
Propagate gateway routes  Yes



----------



azure-fw -> extract the Firewall private IP


routetable01  --> Routes -> routeanem --> 0.0.0.0/0 --> Virtual appliance --> Paste in the value you copied for the Firewall private IP

routetable01 --> Subnets --> Associate --> app-vnet -> FrontendSubnet -> OK

routetable01 --> Subnets --> Associate --> app-vnet -> BackendSubnet -> OK

Firewalls --> azure-fw-policy -> Settings -> Rule Collections 

azuser@appvm01:~$ wget google.com
--2021-10-02 17:41:59--  http://google.com/
Resolving google.com (google.com)... 172.217.0.46, 2607:f8b0:4004:83f::200e
Connecting to google.com (google.com)|172.217.0.46|:80... connected.
HTTP request sent, awaiting response... 301 Moved Permanently
Location: http://www.google.com/ [following]
--2021-10-02 17:41:59--  http://www.google.com/
Resolving www.google.com (www.google.com)... 142.251.45.4, 2607:f8b0:4004:829::2004
Connecting to www.google.com (www.google.com)|142.251.45.4|:80... connected.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [text/html]
Saving to: ‘index.html’

index.html                            [ <=>                                                         ]  13.65K  --.-KB/s    in 0s      

2021-10-02 17:41:59 (181 MB/s) - ‘index.html’ saved [13982]

azuser@appvm01:~$ 


-----------

azuser@appvm01:~$ 
azuser@appvm01:~$ 
azuser@appvm01:~$ wget microsoft.com
--2021-10-02 17:42:47--  http://microsoft.com/
Resolving microsoft.com (microsoft.com)... 40.112.72.205, 40.113.200.201, 13.77.161.179, ...
Connecting to microsoft.com (microsoft.com)|40.112.72.205|:80... connected.
HTTP request sent, awaiting response... 470 status code 470
2021-10-02 17:42:47 ERROR 470: status code 470.

azuser@appvm01:~$ 



------------

azuser@appvm01:~$ nc -vz addexperiencereport.googleapis.com 443 -w 3
Connection to addexperiencereport.googleapis.com 443 port [tcp/https] succeeded!
azuser@appvm01:~$ 
azuser@appvm01:~$ 

