#!/bin/bash
TOPIC=$1

if [ -z "$1" ]; then
  TOPIC=$DEFAULT_TOPIC
fi

# https://kafka.apache.org/quickstart#quickstart_createtopic
COMMAND=("$BIN_FOLDER/kafka-topics.sh" "--describe" "--topic $TOPIC" "--bootstrap-server $BOOTSTRAP_SERVER")

echo "[EXEC] ${COMMAND[@]}"
${COMMAND[@]}