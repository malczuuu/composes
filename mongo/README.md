# Mongo Compose

Docker Compose configuration for MongoDB, deployed as single-note replica set.

Because initialization of replica set requires manual action, this prototype does it via 
`healthcheck` definition as a walkaround.
