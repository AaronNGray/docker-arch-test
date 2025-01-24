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
