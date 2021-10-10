


-------------------------------------------
-------------------------------------------

Basic
-------------
Subscription			xxx-learner-dashing-boa
Resource Group 			plu-resource-group
Location 				eastus
Storage account name 	snsystem
Deployment model 		Resource manager
Performance 			Standard
Replication 			Read-access geo-redundant storage (RA-GRS)

Advanced
-------------
Secure transfer 					Enabled
Allow storage account key access 	Enabled
Allow cross-tenant replication 		Enabled
Default to Azure Active Directory authorization in the Azure portal 							Disabled
Infrastructure encryption 			Disabled
Blob public access 					Enabled
Minimum TLS version 				Version 1.2
Enable hierarchical namespace 		Disabled
Enable network file share v3 		Disabled
Access tier 						Hot
Large file shares 					Disabled

Networking 
-------------	
Network connectivity 				Public endpoint (all networks)
Default routing tier 				Microsoft network routing

Data protection
-------------
Point-in-time restore 				Enabled
Point-in-time restore period in days 	6
Blob soft delete 					Enabled
Blob retainment period in days 		7
Container soft delete 				Enabled
Container retainment period in days 	7
File share soft delete 				Enabled
File share retainment period in days 	7
Versioning 							Enabled
Blob change feed 					Enabled

Tags
Env 			Sathya az LAB2 (Storage account)


-------------

$connectTestResult = Test-NetConnection -ComputerName snsystem.file.core.windows.net -Port 445
if ($connectTestResult.TcpTestSucceeded) {
    # Save the password so the drive will persist on reboot
    cmd.exe /C "cmdkey /add:`"snsystem.file.core.windows.net`" /user:`"localhost\snsystem`" /pass:`"rjzWCQZvBMfdORGvpDEEjlXJz2KsnJZom+mnRLXIR0/I4nv7RXZfG7BGMYOsGJMRvQjveW4VDMDriI1OLRAI9g`""
    # Mount the drive
    New-PSDrive -Name Z -PSProvider FileSystem -Root "\\snsystem.file.core.windows.net\glob" -Persist
} else {
    Write-Error -Message "Unable to reach the Azure storage account via port 445. Check to make sure your organization or ISP is not blocking port 445, or use Azure P2S VPN, Azure S2S VPN, or Express Route to tunnel SMB traffic over a different port."
}

----------------------------------------------------


Virtual machine named as 'vm' has been already created and we can use Bastion to connect.

Resource group ( ) : plu-resource-group
Status : Running
Location : East US
Subscription() : xxx-learner-dashing-boa
Subscription ID : abcbac-abc-1234-abcd-3151186a8e27
Operating system :
Windows (Windows Server 2019 Datacenter)
Size : Standard A1 v2 (1 vcpus, 2 GiB memory)
Public IP address : -
Virtual network/subnet : glob/internal
DNS name : -
Tags ( ) :


---------


PS C:\Users\glob>
PS C:\Users\glob> $connectTestResult = Test-NetConnection -ComputerName snsystem.file.core.windows.net -Port 445
>> if ($connectTestResult.TcpTestSucceeded) {
>>     # Save the password so the drive will persist on reboot
>>     cmd.exe /C "cmdkey /add:`"snsystem.file.core.windows.net`" /user:`"localhost\snsystem`" /pass:`"rjzWCQZvBMfdORGvpDEEjlXJz2KsnJZom+mnRLXIR0/I4nv7RXZfG7BGMYOsGJMRvQjveW4VDMDriI1OLRAI9g`""
>>     # Mount the drive
>>     New-PSDrive -Name Z -PSProvider FileSystem -Root "\\snsystem.file.core.windows.net\glob" -Persist
>> } else {
>>     Write-Error -Message "Unable to reach the Azure storage account via port 445. Check to make sure your organization or ISP is not blocking port 445, or use Azure P2S VPN, Azure S2S VPN, or Express Route to tunnel SMB traffic over a different port."
>> }

CMDKEY: Credential added successfully.

Name           Used (GB)     Free (GB) Provider      Root                                               CurrentLocation
----           ---------     --------- --------      ----                                               ---------------
Z                   0.00       5120.00 FileSystem    \\snsystem.file.core.windows.ne...


PS C:\Users\glob>

