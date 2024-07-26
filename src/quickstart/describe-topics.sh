#!/bin/bash

# https://kafka.apache.org/quickstart#quickstart_createtopic
COMMAND=("$CONTAINER_KAFKA_FOLDER/bin/kafka-topics.sh" "--describe" "--bootstrap-server $BOOTSTRAP_SERVER")

echo "[EXEC] ${COMMAND[@]}"
${COMMAND[@]}