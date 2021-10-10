

https://snsystems.blob.core.windows.net/public/our-story.html#

Basics
Subscription 			xxxx
Resource Group 			plu-resource-group
Location 				eastus
Storage account name 	sathyaglobomantics
Deployment model 		
Resource manager
Performance
Standard
Replication 			Locally-redundant storage (LRS)

Advanced 			
Secure transfer 					Enabled
Allow storage account key access 	Enabled
Allow cross-tenant replication 		Enabled
Default to Azure Active Directory authorization in the Azure portal 	Disabled
Infrastructure encryption 			Disabled
Blob public access 					Disabled
Minimum TLS version 				Version 1.2
Enable hierarchical namespace 		Disabled
Enable network file share v3 		Disabled
Access tier 						Hot
Large file shares 					Disabled

Networking
Network connectivity 				Public endpoint (all networks)
Default routing tier 				Microsoft network routing

Data protection
Point-in-time restore 				Enabled
Point-in-time restore period in days 	6
Blob soft delete 					Enabled
Blob retainment period in days 		7
Container soft delete 				Enabled
Container retainment period in days 7
File share soft delete 				Enabled
File share retainment period in days 	7
Versioning 							Enabled
Blob change feed 					Enabled

Tags
Environment							Sathya az LAB (Storage account)

------------

PS /home/plu-a77b1380> ls
clouddrive
PS /home/plu-a77b1380> ls -ltr
total 0
lrwxrwxrwx 1 plu-a77b1380 plu-a77b1380 22 Oct  3 16:15 clouddrive -> /usr/csuser/clouddrive
PS /home/plu-a77b1380> cd ./clouddrive/
PS /home/plu-a77b1380/clouddrive> ls
PS /home/plu-a77b1380/clouddrive> ls -a
.  ..  .cloudconsole
PS /home/plu-a77b1380/clouddrive>
PS /home/plu-a77b1380/clouddrive>
PS /home/plu-a77b1380/clouddrive>


--------------


Basics
Subscription			ep-labs-learner-included-glider
Resource Group 			plu-resource-group
Location 				eastus
Storage account name 	snsystems
Deployment model 		Resource manager
Performance 			Standard
Replication 			Locally-redundant storage (LRS)

Advanced 				
Secure transfer			Enabled
Allow storage account key access 	Enabled
Allow cross-tenant replication 		Enabled
Default to Azure Active Directory authorization in the Azure portal		Disabled
Infrastructure encryption  			Disabled
Blob public access 					Enabled
Minimum TLS version 				Version 1.2
Enable hierarchical namespace 		Disabled
Enable network file share v3 		Disabled
Access tier 						Hot
Large file shares 					Disabled

Networking
Network connectivity				Public endpoint (all networks)
Default routing tier 				Microsoft network routing

Data protection
Point-in-time restore 				Enabled
Point-in-time restore period in days 	6
Blob soft delete 					Enabled
Blob retainment period in days 		7
Container soft delete 				Enabled
Container retainment period in days 7
File share soft delete 				Enabled
File share retainment period in days  		7
Versioning 							Enabled
Blob change feed 					Enabled

Tags
Environment 						Sathya az LAB public (Storage account)

------------

Requesting a Cloud Shell.Succeeded.
Connecting terminal...


MOTD: Read more about PowerShell in CloudShell: https://aka.ms/pscloudshell/docs

VERBOSE: Authenticating to Azure ...
VERBOSE: Building your Azure drive ...
PS /home/plu-a77b1380> $static = Get-AzStorageAccount | where StorageAccountName -like "static*"
PS /home/plu-a77b1380> $globomantics = Get-AzStorageAccount | where StorageAccountName -like "snsystems*"
PS /home/plu-a77b1380> Get-AzStorageBlob -Context $static.context -Container static | Start-AzStorageBlobCopy -Context $globomantics.context-DestContainer public   AccountName: snsystems, ContainerName: publicName                 BlobType  Length          ContentType                    LastModified         AccessTier SnapshotTime                 IsDeleted----                 --------  ------          -----------                    ------------         ---------- ------------                 ---------css/bootstrap-theme… BlockBlob -1                                             2021-10-03 16:38:08Z                                         Falsecss/bootstrap-theme… BlockBlob -1                                             2021-10-03 16:38:08Z                                         Falsecss/bootstrap-theme… BlockBlob -1                                             2021-10-03 16:38:08Z                                         Falsecss/bootstrap-theme… BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
css/bootstrap.css    BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
css/bootstrap.css.m… BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
css/bootstrap.min.c… BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
css/bootstrap.min.c… BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
css/fontawesome.min… BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
css/images/ui-icons… BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
css/images/ui-icons… BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
css/jquery-ui.css    BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
css/jquery-ui.min.c… BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
css/owl.carousel.mi… BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
css/style-home.css   BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
css/style-media.css  BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
css/style-our-story… BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
css/style-robotics.… BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
fonts/FontAwesome.o… BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
fonts/fontawesome-w… BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
fonts/fontawesome-w… BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
fonts/fontawesome-w… BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
images/Bitmap(1).png BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
images/Bitmap-foote… BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
images/Bitmap.png    BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
images/G.png         BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
images/Globo-Logo-w… BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
images/Globo-Logo-w… BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
images/Hero.png      BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
images/avatar.svg    BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
images/banner.png    BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
images/banner3.png   BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
images/girl.png      BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
images/hero image.p… BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
images/mobileBanner… BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
images/plu-… BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
images/sec2.jpg      BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
images/sec3.jpg      BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
images/shutterstock… BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
images/shutterstock… BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
images/shutterstock… BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
images/shutterstock… BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
images/shutterstock… BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
images/shutterstock… BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
images/shutterstock… BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
index.html           BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
js/bootstrap.js      BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
js/bootstrap.min.js  BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
js/counterup.min.js  BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
js/fitvids.min.js    BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
js/jquery-1.12.4.js  BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
js/jquery-ui.js      BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
js/jquery-ui.min.js  BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
js/jquery.min.js     BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
js/npm.js            BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
js/owl.carousel.min… BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
js/theme.js          BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
js/waypoints.min.js  BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
media.html           BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
our-story.html       BlockBlob -1                                             2021-10-03 16:38:08Z                                         False
robotics.html        BlockBlob -1                                             2021-10-03 16:38:08Z                                         False

PS /home/plu-a77b1380>




