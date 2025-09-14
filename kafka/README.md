# Kafka Compose

Docker Compose configuration for [Apache Kafka](https://hub.docker.com/r/apache/kafka), with Kafka topic initialization using another Kafka container with different `entrypoint` and `command`.

**Note** that `kafka-init-job` is synchronized with main `kafka` container based on `healthcheck` and `condition: service_healthy`.
