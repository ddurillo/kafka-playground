#!/bin/bash
TOPIC=$1

if [ -z "$1" ]; then
  TOPIC=$DEFAULT_TOPIC
fi

# https://kafka.apache.org/quickstart#quickstart_send
COMMAND=("$CONTAINER_KAFKA_FOLDER/bin/kafka-console-producer.sh" "--topic $TOPIC" "--bootstrap-server $BOOTSTRAP_SERVER")

echo "[EXEC] ${COMMAND[@]}"
echo "(Hit Ctrl-C to stop producing events)"
${COMMAND[@]}