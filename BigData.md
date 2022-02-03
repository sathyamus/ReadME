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
	 
 - RAW -- ReadOnly
 - Parquet -- Post Normalization (Modifying columns, removing, updaing data etc)
   - Metadata, occupies less memory 

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
	 
   - Partition
     - Default no of partition for spark is 200 
     - Default partitions can be changed using spark.sql.shuffle.partitions configuration setting
   - Configuration
   
   - Metrics
     - spark.metrics.conf.*.sink.sgmon.class=MonitoringSink
     - spark.metrics.conf.*.sink.sgmon.period=15
	   - spark.metrics.conf.*.sink.sgmon.unit=seconds
	   - spark.metrics.conf.*.sink.sgmon.configurationFile=sgmon-spark.properties
	   - spark.metrics.conf.*.source.jvm.class=org.apache.spark.metrics.source.JvmSource 


```java

import org.apache.spark.sql.SparkSession;

SparkSession.builder().appName("EmailAlerts").setMaster("local[*]").config("key", "value").getOrCreate();

```

#### Zeppelin Notebook

%livy2 -- Zeppelin Notebook
    val trades = spark.read.json("trades.json")
    trades.count

    val trades = spark.read.parquet("trades.parquet")
    trades.count

``` python
import pandas as pd ##import pandas, its used for data analysis
moviecsv = pd.read_csv('https://raw.githubusercontent.com/Dayobam/Data-Literacy-Azure-Databrick-Essentials/main/movies.csv')
print("Displaying my First Databricks Table")
display(moviecsv)

##how long is the movie csv length
len(moviecsv)
```

#### Jupyter Notebook
  - Python
  - Spark

#### Zookeeper

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
   
   oozie job -oozie http://namenodeip:11000/oozie -info 0000101-1234-oozie-oozi-W
   oozie job -oozie http://namenodeip:11000/oozie -log 0000101-1234-oozie-oozi-W
   oozie job -oozie http://namenodeip:11000/oozie -config job.properties -run

 - Oozie is not able to show the log and getting 500 Internal Server Error
   Solution : Re-start Oozie service
   
 - Head Node 
  /var/log/oozie
  /var/log/spark2
  ps -ef | grep oozie
  ps -ef | grep spark
   
#### HDFS

   * hdfs dfs -ls abfss://app@sn00private.dfs.core.windows.net/sathya/jobs/dev/email-api .
   * hdfs dfs -get abfss://app@sn00private.dfs.core.windows.net/sathya/jobs/dev/email-api .
   
   - sn00private/app/sathya/jobs/dev/email-api
   
   * hdfs dfs -get abfss://raw@sn00private.dfs.core.windows.net/sathya/trades/product_type=email/date=20211205/email.json .
   * hdfs dfs -get abfss://lake@sn00private.dfs.core.windows.net/sathya/trades/product_type=email/date=20211205/email.parquet .

#### Kafka
  - Group
  - Topic
  - Produce message
  - Consume message

#### Kafka Issues
  - Not able to consume / deliver messages 
    Fix : Update the group (id / name), then all the messages in that topic will deliver again (PS)

#### Cost Optimization for HD Insights
  - Batch --> Apache Hadoop
  - Batch + Streaming --> Apache Spark

 Scaling to meet the demands :
  - On Demand
  - Schedule
    - Before 9
      - 50% of worker nodes to be terminated
    - After 9
      - 50% of worker nodes to be scaled up
    - After 6
      - 70% of worker nodes to be running

 VM Instances 
  - Spot
  - Pay-as-you-use (On Demand)


#### Monitoring
  - HDInsight
    - Cluster health and availability
	- Resource utilization and performance
	- Job status and logs

