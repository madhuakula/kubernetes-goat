FROM debian:stable
LABEL MAINTAINER "Madhu Akula" INFO="Kubernetes Goat"

ENV HELMV2_VERSION=2.16.7
ENV KUBECTL_VERSION=1.18.3

WORKDIR /tmp/

RUN apt update && apt install curl wget ca-certificates bash telnet -y \
    if [ `uname -m` == "aarch64" ]; then \
        ARCH="arm"; \
    else \
        ARCH="amd"; \
    fi; \
    && curl -LO https://get.helm.sh/helm-v${HELMV2_VERSION}-linux-${ARCH}64.tar.gz \
    && tar -zxvf helm-v${HELMV2_VERSION}-linux-${ARCH}64.tar.gz \
    && curl -LO https://dl.k8s.io/v${KUBECTL_VERSION}/bin/linux/${ARCH}64/kubectl \
    && mv kubectl /usr/local/bin/kubectl \
    && chmod +x /usr/local/bin/kubectl \
    && mv linux-${ARCH}64/helm /usr/local/bin/helm \
    && mv linux-${ARCH}64/tiller /usr/local/bin/tiller \
    && rm -rf /tmp/* /var/lib/apt/lists/*

COPY pwnchart /pwnchart/

WORKDIR /

CMD [ "/bin/bash" ]
