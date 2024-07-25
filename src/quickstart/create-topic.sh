#!/bin/bash
TOPIC=$1

if [ -z "$1" ]; then
  TOPIC=$DEFAULT_TOPIC
fi

# https://kafka.apache.org/quickstart#quickstart_createtopic
COMMAND=("$CONTAINER_KAFKA_FOLDER/bin/kafka-topics.sh" "--create" "--topic $TOPIC" "--bootstrap-server $BOOTSTRAP_SERVER")

echo "[EXEC] ${COMMAND[@]}"
${COMMAND[@]}