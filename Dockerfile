FROM apache/kafka:3.7.1

ARG CONTAINER_KAFKA_FOLDER

USER root

RUN apk add nano
# Needed for Kafka Streams' WordCount
RUN apk add libstdc++

# For import-data and export-data scripts
RUN echo "plugin.path=/opt/kafka/libs/connect-file-3.7.1.jar" >> ${CONTAINER_KAFKA_FOLDER}/config/connect-standalone.properties