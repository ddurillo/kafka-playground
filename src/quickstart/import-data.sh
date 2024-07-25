#!/bin/bash
# https://kafka.apache.org/quickstart#quickstart_kafkaconnect
COMMAND=("$CONTAINER_KAFKA_FOLDER/bin/connect-standalone.sh" "$CONTAINER_KAFKA_FOLDER/config/connect-standalone.properties" "$CONTAINER_KAFKA_FOLDER/config/connect-file-source.properties")

echo "[EXEC] ${COMMAND[@]}"
${COMMAND[@]}