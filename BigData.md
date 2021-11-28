# BigData

 - Ambari
   - Memory view
   - Node health
 - Hadoop file system (HDFS)
 - Yarn (Yet Another Resource Negotiator)
 - Oozie (workflow, coordinator)
   - Oozie wait = true / false
   - Stop Application - cron pattern
      - Spark  
      - Coordinator
      - Spring level
   - spark.yarn.maxAppAttempts
      - maximum number of attempts that will be made to submit the application. 
      - should be no larger than the global number of max attempts in the YARN configuration.

   - We can add custom stop configuration to check, if any spark job is processing a task, 
     and restart will happen only after the task completion, so that task will be un-interrupted.


 - Spark
   - Heap space
     - spark.executor.memory
     - spark.drive.memory
   - Permgen
     - spark.memory.offHeap.enabled
     - spark.memory.offHeap.size

     - spark.driver.memoryOverhead
     - spark.executor.memoryOverhead

   - Dataset .. persist / unpersist 
     - For making available to share with nodes for that thread

%livy2 -- Zeppelin Notebook
    val trades = spark.read.json("trades.json")
    trades.count

    val trades = spark.read.parquet("trades.parquet")
    trades.count


#### 502 Gateway issues
  - Reverse proxy issue with Azure cloud and onprem
  

#### Authentication issue
   GSSException: No valid credentials provided (Mechanism level: Failed to find any Kerberos tgt)
   
  Update below in oozie-submit.sh
    ln -s key.keytab main.keytab
    --keytab main.keytab
    --principal "${USER}" 

#### HDI cluster issues

 - Oozie is not able to authenticate to send the request to spark
   Solution : AD connection was lost and could not restore, restart NameNode for the fix.
   
   
#### HDFS

   * hdfs dfs -ls abfss://sn00private.dfs.core.windows.net/sathya/jobs/dev/email-api .
   * hdfs dfs -get abfss://sn00private.dfs.core.windows.net/sathya/jobs/dev/email-api .
