### Azure

    => DevEnv
    => RDG (Remote Desktop Gateway)
    => APIM 
    => PaaS Subscription (Firewall, API mgmt, Key Vaults)
    => Data Subscription (RAW file system, LAKE file system)
    => Project Subscription (BigData Resources, AKS running applications, Private storage)
    => Feed Subscription (Private storage, KAFKA) 
    => Directory and Subscription Filter
      - Easily manage the resources
      - select the default subscriptions
      - set the subscriptions that you use frequently and unselect the ones that you rarely use

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
  - Monitoring
    - CPU (average), Network (total), and Disk bytes (total)
    - Activity log
  - Attaching a disk with the snapshot disk image (We will not loose the data, incase of VM is destroyed)

- Create a VM with a Template

- Create a VM with PowerShell
  - open the Azure Cloud Shell by clicking on the icon in the top right of the Azure Portal
  - select either Bash or PowerShell, select PowerShell
  - click Create storage, and wait for the Azure Cloud Shell to initialize
  - Create a resource group and virtual machine
    - Create a new resource group
      ps =>  New-AzResourceGroup -Name myRGPS -Location EastUS
    - Verify your new resource group
      ps => Get-AzResourceGroup | Format-Table
  - Create a virtual machine
    - Provide the username and the password that will be configured as the local Administrator account on that virtual machines
       New-AzVm `
       -ResourceGroupName "myRGPS" `
       -Name "myVMPS" `
       -Location "East US" `
       -VirtualNetworkName "myVnetPS" `
       -SubnetName "mySubnetPS" `
       -SecurityGroupName "myNSGPS" `
       -PublicIpAddressName "myPublicIpPS"
  - Execute commands in the Cloud Shell
      - Retrieve information about your virtual machine including name, resource group, location, and status
          Get-AzVM -name myVMPS -status | Format-Table -autosize
      - Stop the virtual machine. When prompted confirm (Yes) to the action
          Stop-AzVM -ResourceGroupName myRGPS -Name myVMPS
      - Verify your virtual machine state. The PowerState should now be deallocated
           Get-AzVM -name myVMPS -status | Format-Table -autosize

- Virtual Machine scale set for creating and managing Load balanced VMs.
  - Create Virtual Network
  - Select a load balancer
  - Select a backend pool
  - Scaling -> Initial instance count 

- Azure Storage
  - Storage account
  - Feeder
  - Storage Explorer Application
    - Connects to different storage accounts from different subscriptions.
    - Generate SAS token
	- Generate azcopy path

- Virtual Networking 
  - Configure Azure DNS

- Monitoring Resources
  - Azure Network Watcher
  - Application Insights
  - Azure Monitor logs search
    - Alerts rules
    - Action Group
  - Azure Data studo logs search

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

  - Blob service
     - Containers
       Name : container1
       Public access level : Private (no anonymous access)
       - Upload
       - Monitor the storage account
         - Insights -> information on Failures, Performance, Availability, and Capacity

- Azure Key Vault
  - We can set an activation and expiration date. 
  - We can also disable the secret.
  - Show Secret Value, to display the password you specified earlier.

- Review Azure Advisor Recommendations
  - Advisor blade, select Overview. Notice recommendations are grouped by High Availability, Security, Performance, and Cost
  - Select All recommendations and take time to view each recommendation and suggested actions.

  Note: Depending on your resources, your recommendations will be different.
  Notice that you can download the recommendations as a CSV or PDF file.
  Notice that you can create alerts.


- Azure Synapse Analytics
  - data integration
  - enterprise data warehousing 
  - big data analytics

- Bastion service
  - Allows to connect Virtual Machines
    - RDP(3389)
    - SSH(22)
  - Connects to VMs using HTTP / HTTPS
  - No need for the VMs to expose public IPs, which are vulenarable to attack
 
- Azure Data Studio
  - Able to connect to PostGRESQL, SQL server in clould / onprem DBs
  
- Power BI
  - Clean, Transform and Model data
  - Premium service to prepare paginated reports
  - DAX - Data Analytics Expression
  - Sharing Reports
    - Power BI service
	- Power BI report server
  - Power BI Desktop
  - Power BI Mobile apps
  
- Azure Database for PostgreSQL
  - Available Tiers (Basic, GeneralPurpose, MemoryOptimized)
  - Single server (underlying OS Windows)
  - Flexible server (underlying OS Linux)
    - Start / Stop
    - Buit-in connection pooler
    - AZ selection for application colocation
    - High Availability - Zone redundant HA, Samezone HA
  - Azure metrics (%CPU, Memory, Storage, IO)

- Azure Advisor
  - Provides the suggestions to optimize the cost of the resources
    - Suggests to reserve resources for longer period (3Y) etc

- Azure Dashboards
  - Used to create various metrics and alerts
    - DBs / VMs created / deleted in x days
    - DBs / VMs re-sized in x days

- Eventhub
   Azure Event Hubs is a native data-streaming service in the cloud that can stream millions of events per second, with low latency, from any source to any destination. Event Hubs is compatible with Apache Kafka. It enables you to run existing Kafka workloads without any code changes.

### Getting the list of Resources registered for respective subscription  
    az provider list > provider_list.txt
    az provider list --query "[].namespace" -o tsv | ForEach-Object { az provider register -n $_}

### Ways to retrieve files from Azure storage account
   - Storage explorer (in Organizations, we need to check the access / proxy etc)
   - azure CLI
   - connect to edge node -> Kerberos authentication -> hdfs get 

### Azure Portal login
   - Accounts to be synchronized to login, if not, reachout to respective team to add / synchronize.

### Accessing azure resources in Corporate environment
   - Proxy : Bypass / key to access azure resources
   - Reverse Proxy : azure resource to be accessed as OnPrem