FROM apache/kafka:3.7.1

ARG CONTAINER_KAFKA_FOLDER

USER root

RUN apk update && apk upgrade

RUN apk add nano
# Needed for Kafka Streams' WordCount
RUN apk add libstdc++
# Needed for Kafka Streams' write app (DO NOT CHANGE THE ORDER)
RUN apk add openjdk8 openjdk8-jre 
# Do "EXPORT JAVA_HOME=/usr/lib/jvm/java-8-openjdk" once you're in the attached shell
RUN apk add maven

# For import-data and export-data scripts
RUN echo "plugin.path=/opt/kafka/libs/connect-file-3.7.1.jar" >> ${CONTAINER_KAFKA_FOLDER}/config/connect-standalone.properties