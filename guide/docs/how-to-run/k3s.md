---
sidebar_label: ☸️ K3S
---

# ☸️ K3S - Lightweight Kubernetes

**TBD: WORK IN PROGRESS**

The docker container runtime must be used to complete some of the included scenarios. K3s uses containerd by default, so adding docker support requires the following steps during installation:

```bash
# Ensure docker version is up-to-date. Reference this repo: https://github.com/rancher/install-docker
curl https://releases.rancher.com/install-docker/20.10.sh | sh
# Change cgroup to cgroupfs because k3s does not use systemd cgroup
echo -e '{\n  "exec-opts": ["native.cgroupdriver=cgroupfs"]\n}' | sudo tee /etc/docker/daemon.json
sudo systemctl daemon-reload
sudo systemctl restart docker
# Install k3s on server with docker option
curl -sfL https://get.k3s.io | sh -s server --docker
SERVER_NAME=$(hostname)  # or enter your local IP address
NODE_TOKEN=$(cat /var/lib/rancher/k3s/server/node-token)
# Install k3s on agent with docker option
curl -sfL https://get.k3s.io | K3S_URL=https://${SERVER_NAME}:6443 K3S_TOKEN=${NODE_TOKEN} sh -s agent --docker
```

Keep in mind that your system architecture affects the scenarios (e.g., you will need to download a different docker binary to complete the docker-in-docker scenario).
