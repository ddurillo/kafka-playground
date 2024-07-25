#!/bin/bash
TOPIC=$1

if [ -z "$1" ]; then
  TOPIC="quickstart-events"
fi

# https://kafka.apache.org/quickstart#quickstart_createtopic
COMMAND=("$BIN_FOLDER/kafka-topics.sh" "--create" "--topic $TOPIC" "--bootstrap-server $BOOTSTRAP_SERVER")

echo "[EXEC] ${COMMAND[@]}"
${COMMAND[@]}