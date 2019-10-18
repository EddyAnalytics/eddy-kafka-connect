ARG UPSTREAM_TAG=0.14.0-kafka-2.3.0

FROM strimzi/kafka:$UPSTREAM_TAG
USER root:root
RUN mkdir /opt/kafka/plugins && \
    curl https://repo1.maven.org/maven2/io/debezium/debezium-connector-mysql/0.9.5.Final/debezium-connector-mysql-0.9.5.Final-plugin.tar.gz | \
        tar -zx -C /opt/kafka/plugins
USER 1001
