FROM registry:2
LABEL MAINTAINER="Madhu Akula" INFO="Kubernetes Goat"

WORKDIR /var/custom/registry/docker/registry

COPY v2.tar.gz /tmp/v2.tar.gz
COPY config.yml /etc/docker/registry/config.yml

RUN tar -xf /tmp/v2.tar.gz -C /var/custom/registry/docker/registry/ \
    && rm /tmp/*

CMD [ "registry", "serve", "/etc/docker/registry/config.yml" ]
