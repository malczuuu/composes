# NATS

Compose setup for [NATS](https://docs.nats.io/).

Ports:

- `4222` - Port for NATS client connections (publish/subscribe).  
- `8222` - HTTP port for server monitoring and health checks (`/healthz`).  
- `6222` - Port for communication between NATS cluster nodes.
