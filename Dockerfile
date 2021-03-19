ARG UPSTREAM_TAG

FROM quay.io/strimzi/kafka:$UPSTREAM_TAG
USER root:root
RUN mkdir /opt/kafka/plugins && \
    curl https://repo1.maven.org/maven2/io/debezium/debezium-connector-postgres/1.5.0.Beta2/debezium-connector-postgres-1.5.0.Beta2-plugin.tar.gz | \
        tar -zx -C /opt/kafka/plugins
RUN curl https://repo1.maven.org/maven2/io/debezium/debezium-connector-mysql/1.5.0.Beta2/debezium-connector-mysql-1.5.0.Beta2-plugin.tar.gz | \
        tar -zx -C /opt/kafka/plugins
USER 1001
