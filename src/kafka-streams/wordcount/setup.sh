#!/bin/bash

# https://kafka.apache.org/37/documentation/streams/quickstart
# Create the "input" and "output" topics
$CONTAINER_KAFKA_FOLDER/bin/kafka-topics.sh --create --bootstrap-server $BOOTSTRAP_SERVER --replication-factor 1 --partitions 1 --topic streams-plaintext-input
$CONTAINER_KAFKA_FOLDER/bin/kafka-topics.sh --create --bootstrap-server $BOOTSTRAP_SERVER --replication-factor 1 --partitions 1 --topic streams-wordcount-output --config cleanup.policy=compact

# Describe them
$CONTAINER_KAFKA_FOLDER/bin/kafka-topics.sh --bootstrap-server $BOOTSTRAP_SERVER --describe

# Start the app. The count for the KTable is stored in the KStreams node, so it is in a file (meaning you will need to recreate the container to reset the count)
$CONTAINER_KAFKA_FOLDER/bin/kafka-run-class.sh org.apache.kafka.streams.examples.wordcount.WordCountDemo