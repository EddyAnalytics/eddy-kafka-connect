FROM strimzi/kafka-connect:0.11.4-kafka-2.1.0
USER root:root
RUN mkdir plugins && \
    curl https://repo1.maven.org/maven2/io/debezium/debezium-connector-mysql/0.9.5.Final/debezium-connector-mysql-0.9.5.Final-plugin.tar.gz | \
        tar -zx -C plugins
USER 1001
