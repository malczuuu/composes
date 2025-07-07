# Traefik Compose

Docker Compose configuration for [Traefik](https://doc.traefik.io/traefik/), exploring concepts of gateway and
reverse-proxy. It demonstrates single gateway which routes HTTP paths into two applications.

```txt
/            ->  /     frontend-mock
/prefix/api  ->  /api  backend-mock
```

End applications use [`ealen/echo-server:0.9.2`](https://hub.docker.com/r/ealen/echo-server) image.

See `$.environment.APP_NAME` to find out to which application was the endpoint routed.

Additionally, this configuration showcases some Traefik features such as:

1. Prometheus metrics, available on http://localhost:6982/metrics endpoint.
2. Example HTTP middleware for removing prefix from HTTP path. 
