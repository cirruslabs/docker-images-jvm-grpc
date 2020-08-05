FROM openjdk:14-jdk

MAINTAINER Cirrus Labs hello@cirruslabs.org;

ENV GRPC_PROBE_VERSION=0.3.2

ADD https://github.com/grpc-ecosystem/grpc-health-probe/releases/download/v$GRPC_PROBE_VERSION/grpc_health_probe-linux-amd64 /bin/grpc_health_probe
RUN chmod +x /bin/grpc_health_probe
