### Azure

- Virtual Machines
  - Create a resource -> search 'Windows Server'
  - Choose the Subscription -> Resource group
  - VM name, Region, Image, Size 
  - Administrator account (username, password)
  - Virtual Network
  - Public IP address, Private IP address 
  - CPU (average), Network (total), Disk bytes, Disk operations
  - Configuration
    - Static / Dynamic
  - Networking
    - Inbound port rules, Outbound port rules (Allow / Deny)
  - Connect with RDP
  - Auto-shutdown
  - Cloud Shell (icon is at on top right corner of poral)

- Virtual Machine scale set for creating and managing Load balanced VMs.
  - Create Virtual Network
  - Select a load balancer
  - Select a backend pool
  - Scaling -> Initial instance count 

- Azure Storage
  - Storage account
  - Feeder 

- Virtual Networking 
  - Configure Azure DNS

- Monitoring 
  - Azure Network Watcher

- Data Protection 
  - Azure Site Recovery between Azure regions

- LoadBalancer
  - Frontend IP configuration
  - Backend pools
  - Health probes
  - Load balancing rules
  
- Storage Account
   Subscription :  Choose your subscription
   Resource group :  myRGStorage (create new)
   Storage account name : storageaccountxxxx
   Location : (US) East US
   Performance : Standard
   Account kind : StorageV2 (general purpose v2)
   Replication : Locally redundant storage (LRS)