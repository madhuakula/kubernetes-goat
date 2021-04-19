FROM alpine

MAINTAINER "Rewanth Cool" INFO="Kubernetes Goat"

ADD ./secret.txt /root/secret.txt
RUN cat /root/secret.txt && rm -rf /root/secret.txt
CMD sleep 10d
