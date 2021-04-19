FROM alpine:latest

LABEL MAINTAINER "Madhu Akula" INFO="Kubernetes Goat"

ADD secret.txt /root/secret.txt

RUN echo "Contributed by Rewanth Cool" >> /root/contribution.txt \
    && rm -rf /root/secret.txt

CMD ["sh", "-c", "tail -f /dev/null"]
