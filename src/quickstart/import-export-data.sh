#!/bin/bash

# https://kafka.apache.org/quickstart#quickstart_kafkaconnect
# The source file takes data from test.txt, and sink dumps it to test.sink.txt
COMMAND=("$CONTAINER_KAFKA_FOLDER/bin/connect-standalone.sh" "$CONTAINER_KAFKA_FOLDER/config/connect-standalone.properties" "$CONTAINER_KAFKA_FOLDER/config/connect-file-source.properties" "$CONTAINER_KAFKA_FOLDER/config/connect-file-sink.properties")

echo "[EXEC] ${COMMAND[@]}"
${COMMAND[@]}
# You can also consume events from the topic with "./consume-events.sh connect-test"