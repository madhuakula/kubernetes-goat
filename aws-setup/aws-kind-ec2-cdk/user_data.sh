#!/bin/bash
sudo apt-get update
sudo apt-get install -y docker.io
sudo service docker start
curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.14.0/kind-linux-amd64
chmod +x ./kind
sudo mv ./kind /usr/bin/kind
sudo snap install kubectl --classic
git clone https://github.com/madhuakula/kubernetes-goat.git
cd kubernetes-goat/kind-setup/
sudo bash setup-kind-cluster-and-goat.sh

