# docker-arch-test
Dockerfile
```
FROM --platform=$BUILDPLATFORM ubuntu:latest
USER root

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get -y --no-install-recommends install unzip

ARG TARGETPLATFORM
ARG BUILDPLATFORM
ARG TARGETOS 
ARG TARGETARCH

RUN echo "BUILDPLATFORM: $BUILDPLATFORM"
RUN echo "TARGETPLATFORM: $TARGETPLATFORM"
RUN echo "TARGETOS: $TARGETOS"
RUN echo "TARGETARCH: $TARGETARCH"
```
```
docker build --progress=plain . 
```
x64
```
```
arm
```
#6 [3/6] RUN echo "BUILDPLATFORM: linux/arm/v7"
#6 1.439 BUILDPLATFORM: linux/arm/v7
#6 DONE 1.6s

#7 [4/6] RUN echo "TARGETPLATFORM: linux/arm/v7"
#7 1.476 TARGETPLATFORM: linux/arm/v7
#7 DONE 1.7s

#8 [5/6] RUN echo "TARGETOS: linux"
#8 1.363 TARGETOS: linux
#8 DONE 1.6s

#9 [6/6] RUN echo "TARGETARCH: arm"
#9 1.534 TARGETARCH: arm
#9 DONE 1.8s
```
arm64
```
#6 [3/6] RUN echo "BUILDPLATFORM: linux/arm64"
#6 0.215 BUILDPLATFORM: linux/arm64
#6 DONE 0.2s

#7 [4/6] RUN echo "TARGETPLATFORM: linux/arm64"
#7 0.347 TARGETPLATFORM: linux/arm64
#7 DONE 0.4s

#8 [5/6] RUN echo "TARGETOS: linux"
#8 0.317 TARGETOS: linux
#8 DONE 0.3s

#9 [6/6] RUN echo "TARGETARCH: arm64"
#9 0.291 TARGETARCH: arm64
#9 DONE 0.3s
```
