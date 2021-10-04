### Apache Kafka

Step 1 : latest Kafka release and extract it:

$ tar -xzf kafka_2.13-3.0.0.tgz
$ cd kafka_2.13-3.0.0

Step 2 : Start
# Start the ZooKeeper service
# Note: Soon, ZooKeeper will no longer be required by Apache Kafka.
$ bin/zookeeper-server-start.sh config/zookeeper.properties

 Open another terminal session and run:

# Start the Kafka broker service
$ bin/kafka-server-start.sh config/server.properties

Step 3 : Create a Topic

Before you can write your first events, you must create a topic. Open another terminal session and run:

$ bin/kafka-topics.sh --create --topic quickstart-events --bootstrap-server localhost:9092


$ bin/kafka-topics.sh --describe --topic quickstart-events --bootstrap-server localhost:9092

Step 4 : Push Events

 Run the console producer client to write a few events into your topic. By default, each line you enter will result in a separate event being written to the topic.

$ bin/kafka-console-producer.sh --topic quickstart-events --bootstrap-server localhost:9092
This is my first event
This is my second event

Step 5 : Consume Events

Open another terminal session and run the console consumer client to read the events you just created:

$ bin/kafka-console-consumer.sh --topic quickstart-events --from-beginning --bootstrap-server localhost:9092
This is my first event
This is my second event

You can stop the consumer client with Ctrl-C at any time.

