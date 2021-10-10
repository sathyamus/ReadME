

Implement and Manage Virtual Networking on Azure


Error details


{"details":[{"code":"ResourceNotFound","message":"The Resource 'Microsoft.Network/virtualNetworks/westus-vnet' under resource group 'pluralsight-resource-group' was not found. For more details please go to https://aka.ms/ARMResourceNotFoundFix"}]}



Basics
Subscription : xxx
Resource group : pluxxxx
Region East US
Name eastus-web-nic
Virtual network eastus-vnet
Subnet eastus-vnet/web (10.100.0.0/24)
Private IP address assignment Static
Private IP address 10.100.0.4
Network security group eastus-web-nsg


--------------------


PRODUCT DETAILS				Standard DS1 v2
by Microsoft
Terms of use Privacy policy
Subscription credits apply
0.1260 USD/hr
Pricing for other VM sizes
TERMS
By clicking "Create", I (a) agree to the legal terms and privacy statement(s) associated with the Marketplace offering(s) listed above; (b) authorize Microsoft to bill my current payment method for the fees associated with the offering(s), with the same billing frequency as my Azure subscription; and (c) agree that Microsoft may share my contact, usage and transactional information with the provider(s) of the offering(s) for support, billing and other transactional activities. Microsoft does not provide rights for third-party offerings. See the Azure Marketplace Terms for additional details.

Basics

Subscription			xxxxx
Resource group 			plurxxxxx
Virtual machine name 	eastus-web2
Region 					East US
Availability options   	No infrastructure redundancy required
Image  					Windows Server 2019 Datacenter - Gen1
Size 					Standard DS1 v2 (1 vcpu, 3.5 GiB memory)
Username 				pluralsight2
Already have a Windows license? 		No
Azure Spot 		 		No

Disks 					
OS disk type		Premium SSD LRS 		
Use managed disks 		Yes
Ephemeral OS disk 		No

Networking
Virtual network 		eastus-vnet
Subnet 					web (10.100.0.0/24)
Public IP 				None
NIC network security group None
Accelerated networking 	On
Place this virtual machine behind an existing load balancing solution? 		No

Management 				
Azure Security Center 		None
Boot diagnostics  			On
Enable OS guest diagnostics 		Off
System assigned managed identity 	Off
Login with Azure AD 				Off
Auto-shutdown 						Off
Enable hotpatch (Preview)  			Off
Patch orchestration options 		OS-orchestrated patching: patches will be installed by OS

Advanced
Extensions  						None
Cloud init  						No
User data 							No
Proximity placement group 			None

Resource group () : pluxxxx
Status : Deallocating
Location : East US
Subscription () : xxxxx
Subscription ID : ef1dxxx-xxxx
Operating system : 	Windows
Size : Standard DS1 v2 (1 vcpus, 3.5 GiB memory)
Public IP address : -
Virtual network/subnet : eastus-vnet/web
DNS name : -
Tags ( ) :