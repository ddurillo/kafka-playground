#!/bin/bash
TOPIC=$1

if [ -z "$1" ]; then
  TOPIC=$DEFAULT_TOPIC
fi

# https://kafka.apache.org/quickstart#quickstart_consume
COMMAND=("$BIN_FOLDER/kafka-console-consumer.sh" "--topic $TOPIC" "--from-beginning" "--bootstrap-server $BOOTSTRAP_SERVER")

echo "[EXEC] ${COMMAND[@]}"
echo "(Hit Ctrl-C to stop consuming events)"
${COMMAND[@]}