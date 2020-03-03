# Base image for JVM GRPC service

Contains [`grpc_health_probe` executable](https://github.com/grpc-ecosystem/grpc-health-probe) for easier health checking:

```Dockerfile
FROM cirrusci/jvm-grpc:11

EXPOSE 8000

HEALTHCHECK --interval=1m --timeout=30s \
  CMD grpc_health_probe -addr=localhost:8000 -rpc-timeout 30s
```

Your GRPC service should implement [GRPC's health checking protocol](https://github.com/grpc/grpc/blob/master/doc/health-checking.md).
