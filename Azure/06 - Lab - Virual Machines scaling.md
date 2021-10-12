

https://app.pluralsight.com/labs/detail/ac71edd2-37ba-413e-ad54-e762726ad8bb/toc

Configure VMs for High Availability and Scalability on Azure

Create a virtual machine scale set

Basics
Subscription	: ep-labs-learner-free-crab
Resource group 	: ps-resource-group
Virtual machine scale set name : ps-prod-app2-vms
Region 			: East US
Orchestration mode : Uniform
Availability zone  : 1,3
Image 			: Windows Server 2019 Datacenter - Gen2
Size 			: Standard DS1 v2 (1 vcpu, 3.5 GiB memory)
Username 		: ps-admin
Azure Spot 		: No

Instance 		
Initial instance count 	: 4
Already have a Windows license? : No
Disks
OS disk type : Premium SSD LRS
Use managed disks : Yes
Ephemeral OS disk : No

Networking
Virtual network : ps-prod-vnet
Network interfaces : ps-prod-vnet-nic01
Load balancing 	: Yes

Management
Upgrade mode : Manual
Boot diagnostics : On
System assigned managed identity : Off
Login with Azure AD : Off
Enable overprovisioning : On
Enable automatic OS upgrades : Off
Termination delay (minutes) : 5

Scaling
Scaling : No
Scale-In policy : Oldest VM

Health
Enable application health monitoring : false

Advanced
Enable scaling beyond 100 instances : Yes
Proximity placement group : None
Spreading algorithm : 1
Force strictly even balance across zones : No
Extensions : None
Cloud init : No
User data : No

Tags
Environment : ps-prod-app2 (Load balancer)
Environment : ps-prod-app2 (Network interface)
Environment : ps-prod-app2 (Network security group)
Environment : ps-prod-app2 (Public IP address)
Environment : ps-prod-app2 (Storage account)
Environment : ps-prod-app2 (Virtual machine extension)
Environment : ps-prod-app2 (Virtual machine scale set)
Environment : ps-prod-app2 (Virtual network)

------------------


1. Create a virtual machine


Basics
Subscription : ep-labs-learner-free-crab
Resource group : ps-resource-group
Virtual machine name : ps-prod-app1-vm01
Region : East US
Availability options
Availability zone : Availability zone 3
Image : Ubuntu Server 18.04 LTS - Gen2
Size : Standard DS1 v2 (1 vcpu, 3.5 GiB memory)
Authentication type : Password
Username : ps-admin
Public inbound ports : HTTP
Azure Spot : No
Disks : 
OS disk type : Premium SSD LRS
Use managed disks : Yes
Ephemeral OS disk : No

Networking
Virtual network : ps-prod-vnet
Subnet : ps-prod-snet-app1 (10.2.1.0/24)
Public IP : None
Accelerated networking : On
Place this virtual machine behind an existing load balancing solution? : Yes
Load balancing options : LoadBalancer
Select a load balancer : ps-prod-app1-lb
Select a backend pool : ps-prod-app1-lb-bckpool

Management
Azure Security Center : None
Boot diagnostics : On
Enable OS guest diagnostics : Off
System assigned managed identity : Off
Login with Azure AD (Preview) : Off
Auto-shutdown : Off
Backup : Disabled
Enable hotpatch (Preview) : Off
Patch orchestration options : Image Default

Advanced
Extensions : None
Cloud init : Yes
User data : No
Proximity placement group : None

Tags
Environment : ps-prod-app1 (Auto-shutdown schedule)
Environment : ps-prod-app1 (Availability set)
Environment : ps-prod-app1 (Disk)
Environment : ps-prod-app1 (Network interface)
Environment : ps-prod-app1 (Network security group)
Environment : ps-prod-app1 (Public IP address)
Environment : ps-prod-app1 (Recovery Services vault)
Environment : ps-prod-app1 (SSH key)
Environment : ps-prod-app1 (Storage account)
Environment : ps-prod-app1 (Virtual machine)
Environment : ps-prod-app1 (Virtual machine extension)
Environment : ps-prod-app1 (Virtual network)

