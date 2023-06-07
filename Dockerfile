ARG OPENJDK_TAG=17-jdk-slim

FROM openjdk:$OPENJDK_TAG

ARG TARGETARCH

MAINTAINER Cirrus Labs hello@cirruslabs.org;
LABEL org.opencontainers.image.source=https://github.com/cirruslabs/docker-images-jvm-grpc/

ENV GRPC_PROBE_VERSION=0.3.6

ADD https://github.com/grpc-ecosystem/grpc-health-probe/releases/download/v$GRPC_PROBE_VERSION/grpc_health_probe-linux-$TARGETARCH /bin/grpc_health_probe
RUN chmod +x /bin/grpc_health_probe
