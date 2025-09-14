# Keycloak Compose

This repository sets up [Keycloak `26.2.5`][keycloak-docker] with [MariaDB `11.8.2`][mariadb-docker] to use in
development environments. Keycloak is configured with two realms - `master` (default administration realm) and
`primary` (to use with target application).

Additionally, it sets up development tools:

- [`mailpit:v1.26`][mailpit-docker] - mock for email server (realms are configured to use it as email server),
- [`phpmyadmin:5.2.2`][phpmyadmin-docker].

**Note** that it's required to use Docker Compose v2, where `compose` is a subcommand of `docker` instead of being separate
`docker-compose` executable and `version` is no longer required in `docker-compose.yaml` files.

To restore database to the default setup, recreate volumes.

```sh
docker compose down --volumes
```

## Usage Details

There are some predefined users in default database state of given Keycloak installation.

- http://localhost:8080 (redirects to http://localhost:8080/admin/master/console) - Keycloak administration with
  `master` realm,
- http://localhost:8080/realms/primary/account Keycloak account details page for `primary` realm,
- http://localhost:8025/ - Mailpit, mock tool for email server,
- http://localhost:3307/ - PhpMyAdmin.

| Realm        | Username          | Email                                | Password          |
|--------------|-------------------|--------------------------------------|-------------------|
| **`master`** | `admin`           | `admin@example.com`                  | `password`        |
| `primary`    | `obiwan.kenobi`   | `obiwan.kenobi@empire.example.com`   | `obiwan.kenobi`   |
| `primary`    | `sheev.palpatine` | `sheev.palpatine@empire.example.com` | `sheev.palpatine` |

[keycloak-docker]: https://quay.io/repository/keycloak/keycloak

[mariadb-docker]: https://hub.docker.com/_/mariadb

[mailpit-docker]: https://hub.docker.com/r/axllent/mailpit

[phpmyadmin-docker]: https://hub.docker.com/_/phpmyadmin
