# Build Code

This docker container is part of Kubernetes Goat.

## Building this docker container

```bash
docker build -t madhuakula/k8s-goat-build-code .
```

## Push this docker container to Docker Hub

```bash
docker push madhuakula/k8s-goat-build-code
```

## Extra

* Build the `app` binary for the linux using the following command

```bash
GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build
```
