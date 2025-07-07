CREATE USER keycloak IDENTIFIED BY 'yBsDABFDIas5jerb';
CREATE DATABASE keycloak CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci;
GRANT ALL PRIVILEGES ON keycloak.* TO keycloak;
