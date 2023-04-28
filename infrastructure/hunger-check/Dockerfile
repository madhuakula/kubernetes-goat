FROM ubuntu:18.04
LABEL MAINTAINER="Madhu Akula" INFO="Kubernetes Goat"

RUN apt update && apt install stress-ng curl wget -y \
    && cd /tmp; \
    arch=`uname -m` && \
    if [ $arch = "aarch64" ] || [ $arch = "arm64" ]; then \
        GOTTY="gotty_2.0.0-alpha.3_linux_arm.tar.gz"; \
    else \
        GOTTY="gotty_2.0.0-alpha.3_linux_amd64.tar.gz"; \
    fi; \
    wget https://github.com/yudai/gotty/releases/download/v2.0.0-alpha.3/${GOTTY} \
    && tar -xvzf ${GOTTY}; mv gotty /usr/local/bin/gotty

EXPOSE 8080

CMD [ "gotty", "-w", "bash" ]
