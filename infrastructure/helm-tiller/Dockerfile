FROM debian:stable
LABEL MAINTAINER "Madhu Akula" INFO="Kubernetes Goat"

ENV HELMV2_VERSION=2.16.7
ENV KUBECTL_VERSION=1.18.3

WORKDIR /tmp/

RUN apt update && apt install curl wget ca-certificates bash telnet -y \
    && curl -LO https://get.helm.sh/helm-v${HELMV2_VERSION}-linux-amd64.tar.gz \
    && tar -zxvf helm-v${HELMV2_VERSION}-linux-amd64.tar.gz \
    && curl -LO https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL_VERSION}/bin/linux/amd64/kubectl \
    && mv kubectl /usr/local/bin/kubectl \
    && chmod +x /usr/local/bin/kubectl \
    && mv linux-amd64/helm /usr/local/bin/helm \
    && mv linux-amd64/tiller /usr/local/bin/tiller \
    && rm -rf /tmp/* /var/lib/apt/lists/*

COPY pwnchart /pwnchart/

WORKDIR /

CMD [ "/bin/bash" ]
