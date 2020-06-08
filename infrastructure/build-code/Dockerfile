FROM alpine:latest
LABEL MAINTAINER="Madhu Akula" INFO="Kubernetes Goat"

COPY app.tar.gz /app.tar.gz

RUN apk --no-cache add git py3-pip \
    && pip install truffleHog \
    && tar -xvzf app.tar.gz -C /

EXPOSE 3000

WORKDIR /app/

CMD ["./app"]
