
## Azure BigData services

  -> Azure Data Lake
     - Azure Data Lake Store
	 - Azure Data Lake Analytics
	 - Azure HDInsight
  -> Databricks
     - Dataframe
	 - Managed table
	 - Un-managed table
  -> Synapses Analytics
 

 -> Batch data
   - Periodically transfer data to another database for analytical querying
 -> Stream Data
   - Continously calculate new analytical query results when data is added or updated

   
#### URI scheme to reference data

   1. ADLS Gen2 Connectivity – File System
        abfs[s]://file_system@account_name.dfs.core.windows.net/<dir1>/<dir2>/<file_name>
   2. Azure Blob storage connectivity
        wsab[s]://containername@account_name.dfs.core.windows.net/<folder1>/<folder2>

    Windows Azure Storage Blob driver (WASB), the original support for Azure Blob Storage.
    Azure Blob Filesystem driver (ABFS), A dedicated Azure Storage driver for Hadoop
	
	The ABFS driver was designed to overcome the inherent deficiencies of WASB.
    Refer: https://docs.microsoft.com/en-us/azure/storage/blobs/data-lake-storage-abfs-driver


#### Sample Stream Processing

   Input --> Event Hub (Ingest) --> Databricks (Process) --> CosmosDB (Storage) --> Power BI (Report)

#### Modern Data warehouse architecture

   Input (Structured / Unstructured Data source) --> Ingest --> Storage --> Transform & Enrich --> Model & serve

#### Labs

  -> Single Node cluster
  -> Auto Terminate or 120m idle time .. charged per hr by Microsoft


#### Links

 ARM Template 
 - https://dkutemplates.blob.core.windows.net/fleet-manager-templates/10.0.2/fleet-manager-network.json

 - https://app.pluralsight.com/paths/certificate/microsoft-dp-900-azure-data-fundamentals

 - https://app.pluralsight.com/library/courses/data-literacy-essentials-azure-synapse-analytics/    
 - https://app.pluralsight.com/library/courses/building-first-data-lakehouse-azure-synapse-analytics

 - https://docs.microsoft.com/en-us/azure/data-factory/tutorial-data-flow
 - https://docs.microsoft.com/en-us/azure/data-factory/data-flow-select
 - https://docs.microsoft.com/en-us/azure/data-factory/data-flow-transformation-overview

 - https://github.com/MicrosoftLearning/DP-200-Implementing-an-Azure-Data-Solution/blob/master/instructions/dp-200-07_instructions.md
 - https://www.dataplatformschool.com/blog/synapse-databricks-benchmark/
