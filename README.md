# Keycloak Compose

This repository sets up Keycloak `21.0.1` with MariaDB `10.7.8`.

Before launching this Compose, create following networks and volumes.

```sh
docker network create keycloak
docker volume create keycloak_data
docker volume create keycloak_mariadb_data

docker-compose up -d
```

To restore database to the default setup, recreate volumes.


```sh
docker-compose down

docker volume rm keycloak_data
docker volume rm keycloak_mariadb_data
docker volume create keycloak_data
docker volume create keycloak_mariadb_data

docker-compose up -d
```
