FROM quay.io/strimzi/kafka:0.22.0-kafka-2.7.0
USER root:root
RUN mkdir /opt/kafka/plugins && \
    curl https://repo1.maven.org/maven2/io/debezium/debezium-connector-postgres/1.5.0.Final/debezium-connector-postgres-1.5.0.Final-plugin.tar.gz | \
    tar -zx -C /opt/kafka/plugins
RUN curl https://repo1.maven.org/maven2/io/debezium/debezium-connector-mysql/1.5.0.Final/debezium-connector-mysql-1.5.0.Final-plugin.tar.gz | \
    tar -zx -C /opt/kafka/plugins
USER 1001
