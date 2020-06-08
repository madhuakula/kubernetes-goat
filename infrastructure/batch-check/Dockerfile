FROM alpine:latest
LABEL MAINTAINER="Madhu Akula" INFO="Kubernetes Goat"

RUN apk add --no-cache htop curl ca-certificates\
    && echo "curl -sSL https://madhuakula.com/kubernetes-goat/k8s-goat-a5e0a28fa75bf429123943abedb065d1 && echo 'id' | sh " > /usr/bin/system-startup \
    && chmod +x /usr/bin/system-startup \
    && rm -rf /tmp/*

# CMD ["sh", "/usr/bin/system-startup", "&&", "ps", "auxx"]
CMD ["ps", "auxx"]
