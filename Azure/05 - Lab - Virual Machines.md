


PRODUCT DETAILS
Standard DS1 v2
by Microsoft
Terms of use Privacy policy
Subscription credits apply
0.1260 USD/hr
Pricing for other VM sizes
TERMS
By clicking "Create", I (a) agree to the legal terms and privacy statement(s) associated with the Marketplace offering(s) listed above; (b) authorize Microsoft to bill my current payment method for the fees associated with the offering(s), with the same billing frequency as my Azure subscription; and (c) agree that Microsoft may share my contact, usage and transactional information with the provider(s) of the offering(s) for support, billing and other transactional activities. Microsoft does not provide rights for third-party offerings. See the Azure Marketplace Terms for additional details.

Basics

Subscription : ep-labs-xxx
Resource group : ps-resource-group
Virtual machine name : vm-lab-win001
Region : East US
Availability options : No infrastructure redundancy required
Image : Windows Server 2019 Datacenter - Gen2
Size : Standard DS1 v2 (1 vcpu, 3.5 GiB memory)
Username : azurelabadmin
Public inbound ports : None
Already have a Windows license? : No
Azure Spot : No

Disks
OS disk type : Premium SSD LRS
Use managed disks : Yes
Ephemeral OS disk : No
Networking
Virtual network : (new) vnet-lab-001
Subnet : (new) snet-lab-001 (10.0.0.0/24)
Public IP : (new) vm-lab-win001-ip
Accelerated networking : On
Place this virtual machine behind an existing load balancing solution? : No

Management
Azure Security Center : None
Boot diagnostics : On
Enable OS guest diagnostics : Off
System assigned managed identity : Off
Login with Azure AD : Off
Auto-shutdown : Off
Backup : Disabled
Enable hotpatch (Preview) : Off
Patch orchestration options : OS-orchestrated patching : patches will be installed by OS

Advanced
Extensions : None
Cloud init : No
User data : No
Proximity placement group : None

----------

Create key vault


Review + create
Basics
Subscription : ep-labs-xxx
Resource group : ps-resource-group
Key vault name : kv-lab-win001-sathya
Region : East US
Pricing tier : Standard
Soft-delete : Enabled
Purge protection during retention period : Enabled
Days to retain deleted vaults : 7 days

Access policy 
Azure Virtual Machines for deployment : Disabled
Azure Resource Manager for template deployment : Disabled
Azure Disk Encryption for volume encryption : Enabled
Permission model : Vault access policy
Access policies : 1

Networking
Connectivity method : Public endpoint (all networks)

------

Create a key
