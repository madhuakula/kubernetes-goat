FROM golang:buster
LABEL MAINTAINER="Madhu Akula" INFO="Kubernetes Goat"

WORKDIR /

COPY views /views
COPY go.mod /go.mod
COPY go.sum /go.sum
COPY main.go /main.go


RUN apt update && apt install curl wget iputils-ping -y
RUN go build -o /

EXPOSE 80

CMD ["/health-check"]
