FROM sentinel:5000/jenkins-build-base:latest

## Configuration for Golang development
## Latest versions at:
## https://golang.org/dl/

ARG go_ver=1.15.2

ENV PATH=$PATH:/usr/local/go/bin

RUN \
    wget https://golang.org/dl/go${go_ver}.linux-amd64.tar.gz && \
    tar -C /usr/local -xzf go${go_ver}.linux-amd64.tar.gz && \
    rm go${go_ver}.linux-amd64.tar.gz


ARG BUILD_DATE
ARG IMAGE_NAME
ARG IMAGE_VERSION
LABEL build-date="$BUILD_DATE" \
      description="Image for Go development" \
      summary="Goland tooling." \
      name="$IMAGE_NAME" \
      release="$IMAGE_VERSION" \
      version="$IMAGE_VERSION"
