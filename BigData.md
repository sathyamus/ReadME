# BigData

 - HDI Cluster
   - access to most Hadoop secured services requires user to be authenticated by Kerberos. \
      klist \
      kdestroy \
      kinit ${USER} -kt ${USER}.keytab

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
 - LAKE -- Sharing data
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
     - Reducing partitions 
          Dataset<Row> enrichDs = dataset.repartition(5)
          repartition(1) taking more time than repartition(5) or repartition(20)
	 
   - Partition
     - Default no of partition for spark is 200 
     - Default partitions can be changed using spark.sql.shuffle.partitions configuration setting
     - dataSet.repartition(1).write(..) -- will improve the performance
   - Configuration
   
   - Metrics
     - spark.metrics.conf.*.sink.sgmon.class=MonitoringSink
     - spark.metrics.conf.*.sink.sgmon.period=15
     - spark.metrics.conf.*.sink.sgmon.unit=seconds
     - spark.metrics.conf.*.sink.sgmon.configurationFile=sgmon-spark.properties
     - spark.metrics.conf.*.source.jvm.class=org.apache.spark.metrics.source.JvmSource*

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

    val tradesFilteredOut = "abfss://app@cr/trades/cm"
    val tradesFiltered = spark.read.parquet("trades.parquet").where("trade_id='12345'").write(tradesFilteredOut)
    trades.count

    // Reading parquet and creating temporary SQL table
    val trades = spark.read.parquet("trades.parquet")
    trades.registerTempTable("temp")


    %sql
    select * from temp limit 10

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
   GSS initiate failed
   JA009 : Couldn't setup connection for oozie
   JA009 : Operation category WRITE is not supported in state standby.
   Solution : AD connection was lost and could not restore, restart NameNode for the fix.
   
   oozie job -oozie http://namenodeip:11000/oozie -info 0000101-1234-oozie-oozi-W \
   oozie job -oozie http://namenodeip:11000/oozie -log 0000101-1234-oozie-oozi-W \
   oozie job -oozie http://namenodeip:11000/oozie -config job.properties -run

   https://hdiconfigactions.blob.core.windows.net/hadoopcorepatchingscripts/aadds_client_failover.sh
   
 - Oozie is not able to show the log and getting 500 Internal Server Error
   Solution : Re-start Oozie service
 
  oozie job log <co-ord_job_id>
  yarn logs -applicationId <Application ID> -am ALL

 - Head Node 
  /var/log/oozie
  /var/log/spark2
  ps -ef | grep oozie
  ps -ef | grep spark

 - Ambari Server status (Requires sudo privilleges)
   ambari-server status

 - Ambari Log locations
   /var/log/ambari-server/ambari-server.log
   /var/log/ambari-agent/ambari-agent.log

 - Zookeeper
   cat /etc/hosts
   cat /etc/zookeeper/conf/zoo.conf
   - To start
     python /opt/startup_scripts/startup_hdinsight_zookeeper.py

     lsof -i :2182

  - Name Node
    hdfs dfsadmin -safemode get
    - To identify, whether any of the head nodes are in safe mode or not
    hdfs dfsadmin -D "fs.default.name=hdfs://mycluster/" -safemode get
    - To Recover from safemode any of the head nodes are in safe mode
    hdfs dfsadmin -D "fs.default.name=hdfs://mycluster/" -safemode leave
    - Log locations
      /var/log/hadoop/hdfs
    -- RCA 
       -- Authentication failures during cluster creation
          (If the Kerberos users list is refreshed after the creation, which is leading to Authentication failures)

  - YARN service is DOWN
    Both Yarn services in both headnodes went down.
    From Ambari ... perform restart of any Yarn service ...

  - Ambari ... LDAP Auth sync issues
    sudo ambari-server sync-ldap --all
    sudo service ambari-server restart
    sudo systemctl restart ambari-server
   
#### HDFS

   * hdfs dfs -ls abfss://app@sn00private.dfs.core.windows.net/sathya/jobs/dev/email-api .
   * hdfs dfs -get abfss://app@sn00private.dfs.core.windows.net/sathya/jobs/dev/email-api .
   
   - sn00private/app/sathya/jobs/dev/email-api
   
   * hdfs dfs -get abfss://raw@sn00private.dfs.core.windows.net/sathya/trades/product_type=email/date=20211205/email.json .
   * hdfs dfs -get abfss://lake@sn00private.dfs.core.windows.net/sathya/trades/product_type=email/date=20211205/email.parquet .
   * hdfs dfs -put --from source_path_and_file --to dest_path_and_file

#### Kafka
  - Group
  - Topic 
    - Same topic, different group .. 
    - Add filters in code to consume them, best approach to try with multi-instance
  - Produce message
      - Push manual notification
	      /usr/hdp/current/kafka-broker/bin/kafka-console-producer.sh --bootstrap-server $KAFKA_BROKER --topic notif_message_v1 --producer-property security.protocol=SASL_SSL --producer-property ssl.endpoint.identification.algorithm= < filtered_notif.json
  - Consume message
      - Purge messages
	      /usr/hdp/current/kafka-broker/bin/kafka-console-consumer.sh --bootstrap-server $KAFKA_BROKER --topic notif_message_v1 --consumer-property security.protocol=SASL_SSL --consumer-property ssl.endpoint.identification.algorithm= consumer-property group.id=notif_prd > backup_purged_notif.json
	      /usr/hdp/current/kafka-broker/bin/kafka-console-consumer.sh --bootstrap-server $KAFKA_BROKER --topic notif_message_v1 --consumer-property security.protocol=SASL_SSL --consumer-property ssl.endpoint.identification.algorithm= --from-begining > backup_all_purged_notif.json
		  

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


#### Package a JAR containing your application
  
  $ mvn package
  ...
  [INFO] Building jar: {..}/{..}/target/EmailAlerts-1.0.jar

#### Use spark-submit to run your application
```sh
$ YOUR_SPARK_HOME/bin/spark-submit \
  --class "EmailAlerts" \
  --master local[3] \
  target/EmailAlerts-1.0.jar
``` 

#### Spark-shell
      spark-shell --principal ${USER} --keytab ${USER}.keytab

#### Kerberos Authentication
   -> Creating keytab

      ktutil
        addent -password -p <user_name> -k 1 -e aes128-cts
        addent -password -p <user_name> -k 1 -e aes256-cts
       wkt s_sathya.keytab
       quit

   -> List Keytab encryption types

       klist -ekt s_sathya.keytab

   -> Verification of Keytab

       klist
       kdestroy
       kinit <user_name>
        Password for <user_name>:
       klist -e

#### Kerberos Authentication Issues
   -> The client is being asked for a password, but the Kafka client code does not currently support obtaining a password from the user. not available to garner authentication information from the user.

   *Solution* : If any Java application is giving above error, and its JVM version is not supported with latest AES 128 / 256 encryption type. \
    -> jdk1.8.0_66 \
    -> Upgrade the JVM version to JDK8 202+ \
    -> Verify Keytab has right encryption types \
    -> If unable to upgrade to JDK8 202+, then keytab should have AES 128 instead of AES 256.

#### HDFS / ADSL Gen2 Storage account Issues
   -> Operation could not be completed within the specified time., 500, PUT \
   -> InvalidAbfsRestOperationException   --> java.net.SocketTimeoutException : Read timed out \
   -> If any issues, with File System, then while performing hdfs operations, we will get the readTimeout, and write errors.

   *Solution* : Microsoft support may move the folders to good node and will remove un-healthy node from the nodes list.

##### HDFS / ADSL Gen2 Storage account Latency Issues
   -> When performing file delete operations with too many files, we may notice the latency. \
      -> -> Operation could not be completed within the specified time., 500, DELETE \
      -> If the user is super user then, ackle valuation is skipped. \
      -> Instead of deleting a folder with huge number of files, first delete the files then folder will avoid this issue. \
	  -> If the Storage Account has huge volume of objects, due to this recursive checking of rights, will cause huge delay. 

   *Solution* : Assign Storage Blob Data Owner / super user rights, to avoid the recursive process to checking rights on each object during delete of an object.

  PS : Remove unwanted temprary folders / empty folders. \
       Focus on regular purging. \
       Focus on compaction. \
	   Try coalesce / repartiton (may add little more time to the run of the spark job)

##### MapReduce Paradigm

  Map \
      The map function, also referred to as the map task, processes a single key/value input pair and produces a set of intermediate key/value pairs. \
  Reduce \
      The reduce function, also referred to as the reduce task, consists of taking all key/value pairs produced in the map phase that share the same intermediate key and producing zero, one, or more data items.

##### HDI Cluster
   -> Horizontal scaling \
   -> Low commodity hardware \
   -> Master nodes runs Driver program (High RAM, Low Storage) \
   -> Worker node runs Executor (Task) (Low RAM, High Storage) \
   -> Cluster manager

##### Access Apache Hadoop YARN application logs on Linux-based HDInsight
  https://docs.microsoft.com/en-us/azure/hdinsight/hdinsight-hadoop-access-yarn-app-logs-linux
  https://docs.microsoft.com/en-us/azure/hdinsight/hdinsight-hadoop-collect-debug-heap-dump-linux


https://cloudxlab.com/blog/how-does-yarn-interact-with-zookeeper-to-support-high-availability/

https://cloudxlab.com/blog/how-to-use-a-libary-in-apache-spark-and-process-avro-data-format/

https://cloudxlab.com/blog/big-data-solution-apache-hadoop-and-spark/

https://cloudxlab.com/blog/introduction-to-big-data-and-distributed-computing/

