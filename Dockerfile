FROM apache/kafka:3.7.1

ARG CONTAINER_KAFKA_FOLDER

USER root

RUN apk add nano
# Needed for Kafka Streams' WordCount
RUN apk add libstdc++
# Needed for Kafka Streams' write app
RUN apk add maven
# openjdk21 openjdk21-jre

# RUN { \
# 		echo '#!/bin/sh'; \
# 		echo 'set -e'; \
# 		echo; \
# 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; \
# 	} > /usr/local/bin/docker-java-home \
# 	&& chmod +x /usr/local/bin/docker-java-home
# ENV JAVA_HOME /usr/lib/jvm/java-21-openjdk
# ENV PATH $PATH:/usr/lib/jvm/java-21-openjdk/jre/bin:/usr/lib/jvm/java-21-openjdk/bin

# ENV JAVA_VERSION 8u212
# ENV JAVA_ALPINE_VERSION 8.212.04-r0

# RUN set -x \
# 	&& apk add --no-cache \
# 		openjdk21="$JAVA_ALPINE_VERSION" \
# 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]

# For import-data and export-data scripts
RUN echo "plugin.path=/opt/kafka/libs/connect-file-3.7.1.jar" >> ${CONTAINER_KAFKA_FOLDER}/config/connect-standalone.properties