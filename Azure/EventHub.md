
## Azure Event Hub

  -> Azure Event Hubs is a native data-streaming service in the cloud that can stream millions of events per second, with low latency, from any source to any destination. Event Hubs is compatible with Apache Kafka. It enables you to run existing Kafka workloads without any code changes.

  -> Event Hubs uses a partitioned consumer model. It enables multiple applications to process the stream concurrently and lets you control the speed of processing. 
 

 -> Event Hubs is a multi-protocol event streaming engine that natively supports Advanced Message Queuing Protocol (AMQP), Apache Kafka, and HTTPS protocols. Because it supports Apache Kafka, you can bring Kafka workloads to Event Hubs without making any code changes. You don't need to set up, configure, or manage your own Kafka clusters or use a Kafka-as-a-service offering that's not native to Azure.

 -> Event Hubs is built as a cloud native broker engine. For this reason, you can run Kafka workloads with better performance, better cost efficiency, and no operational overhead.
   
    => Producer applications: These applications can ingest data to an event hub by using Event Hubs SDKs or any Kafka producer client.
    => Namespace: The management container for one or more event hubs or Kafka topics. The management tasks such as allocating streaming capacity, configuring network security, and enabling geo-disaster recovery are handled at the namespace level.
    => Event Hubs/Kafka topic: In Event Hubs, you can organize events into an event hub or a Kafka topic. It's an append-only distributed log, which can comprise one or more partitions.
    => Partitions: They're used to scale an event hub. They're like lanes in a freeway. If you need more streaming throughput, you can add more partitions.
    => Consumer applications: These applications can consume data by seeking through the event log and maintaining consumer offset. Consumers can be Kafka consumer clients or Event Hubs SDK clients.
    => Consumer group: This logical group of consumer instances reads data from an event hub or Kafka topic. It enables multiple consumers to read the same streaming data in an event hub independently at their own pace and with their own offsets.

  -> When developing locally, You'll need the Azure Event Hubs Data Owner role in order to send and receive messages.

### Tips
 -> When using multi instance applications, register your application group name in the Eventhub consumer group name.


#### Links

 Azure Event Hubs: A real-time data streaming platform with native Apache Kafka support
 - https://learn.microsoft.com/en-us/azure/event-hubs/event-hubs-about


 Java to send events to or receive events from Azure Event Hubs
 - https://learn.microsoft.com/en-us/azure/event-hubs/event-hubs-java-get-started-send?tabs=passwordless%2Croles-azure-portal

 - https://learn.microsoft.com/en-us/azure/developer/java/spring-framework/configure-spring-cloud-stream-binder-java-app-azure-event-hub?toc=%2Fazure%2Fevent-hubs%2FTOC.json

 Azure authentication in Java development environments
 - https://learn.microsoft.com/en-us/azure/developer/java/sdk/identity-dev-env-auth

 Features and terminology in Azure Event Hubs
 - https://learn.microsoft.com/en-us/azure/event-hubs/event-hubs-features