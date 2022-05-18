FROM ubuntu:18.04
LABEL MAINTAINER="Madhu Akula" INFO="Kubernetes Goat"

RUN apt update && apt install stress-ng curl wget -y \
    && cd /tmp; \
    if [ `uname -m` == "aarch64" ]; then \
        GOTTY="gottty_linux_arm.tar.gz"; \
    else \
        GOTTY="gotty_linux_amd64.tar.gz"; \
    fi; \
    wget https://github.com/yudai/gotty/releases/download/v1.0.1/$GOTTY \
    && tar -xvzf gotty_linux_amd64.tar.gz; mv gotty /usr/local/bin/gotty

EXPOSE 8080

CMD [ "gotty", "-w", "bash" ]
