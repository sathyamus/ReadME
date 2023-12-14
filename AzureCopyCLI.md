### AzureCopy CLI

### Installation over corporate network
	envinstall azcopy (azure cli)
	envinstall miniconda3
	envinstall px (proxy tool)
	envinstall kubectl

### Commands
	azcopy login
	azcopy login --tenant 123456-c6d2-471c-9056-2df44d5b2d1f
	
	DeviceLogin ==> https://aka.ms/devicelogin

	azcopy copy 'https://<source-storage-account-name>.<blob or dfs>.core.windows.net/<container-name>' 'https://<destination-storage-account-name>.<blob or dfs>.core.windows.net/<container-name>' --recursive

	# If you have the access to both the storage-accounts (different / same subscriptions) then above SAS token is not mandatory.
	azcopy copy 'https://<source-storage-account-name>.<blob or dfs>.core.windows.net/<container-name>/path/to/folder/*' 'https://<destination-storage-account-name>.<blob or dfs>.core.windows.net/<container-name>/path/to/folder/' 

	Refer to : https://learn.microsoft.com/en-us/azure/storage/common/storage-use-azcopy-blobs-copy