#!/bin/bash

# Download Kafka 0.10.0.1 using Scala 2.11 from the internet.
sudo curl -o /opt/kafka_2.11-0.10.0.1.tgz 'http://supergsego.com/apache/kafka/0.10.0.1/kafka_2.11-0.10.0.1.tgz'

# Extract it and make a symbolic link for convenience.
sudo tar xzvf /opt/kafka_2.11-0.10.0.1.tgz -C /opt/
sudo ln -s /opt/kafka_2.11-0.10.0.1 /opt/kafka

# Start a single node instance of Zookeeper using the provided convenience script.
sudo /opt/kafka/bin/zookeeper-server-start.sh /opt/kafka/config/zookeeper.properties

# Start the Kafka server.
sudo /opt/kafka/bin/kafka-server-start.sh /opt/kafka/config/server.properties