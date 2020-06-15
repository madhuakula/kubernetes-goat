# Kubernetes Goat

[![Netlify Status](https://api.netlify.com/api/v1/badges/e5399be3-9c47-4557-b237-9e6c89f6cada/deploy-status)](https://app.netlify.com/sites/kubernetes-goat/deploys)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://github.com/madhuakula/kubernetes-goat/blob/master/LICENSE)
[![GitHub release](https://img.shields.io/github/release/madhuakula/kubernetes-goat.svg)](https://github.com/madhuakula/kubernetes-goat/releases/latest)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](https://github.com/madhuakula/kubernetes-goat/pulls)
[![Twitter](https://img.shields.io/twitter/url?url=https://github.com/madhuakula/kubernetes-goat)](https://twitter.com/intent/tweet/?text=Kubernetes%20Goat,%20an%20intentionally%20vulnerable%20by%20design%20training%20platform%20to%20learn%20%23Kubernetes%20Security%20by%20%40madhuakula.%20Check%20it%20out%20&url=https://github.com/madhuakula/kubernetes-goat)

The Kubernetes Goat designed to be intentionally vulnerable cluster environment to learn and practice Kubernetes security.

**Refer to [https://madhuakula.com/kubernetes-goat](https://madhuakula.com/kubernetes-goat) for the guide.** 

<p align="center">
  <img width="300" height="300" src="./kubernetes-goat-logo.png" alt="Kubernetes-Goat logo">
</p>

## ⚙️ Setting up Kubernetes Goat

* Before we setup the Kubernetes Goat, ensure that you have created and admin access to the Kubernetes cluster

```bash
kubectl version --short
```

* Setup the helm version 2 in path as `helm2`. Refer to helm [releases](https://github.com/helm/helm/releases) for more information about setup

```bash
helm2 --help
```

* Then finally setup Kubernetes Goat by running the following command

```bash
git clone https://github.com/madhuakula/kubernetes-goat.git
cd kubernetes-goat
bash setup-kubernetes-goat.sh
```

* To export the ports/services locally to start learning, run the following command

```bash
bash access-kubernetes-goat.sh
```

## 🏁 Scenarios

1. Sensitive keys in code bases
2. DIND(docker-in-docker) exploitation
3. SSRF in K8S world
4. Container escape to access host system
5. Docker CIS Benchmarks analysis
6. Kubernertes CIS Benchmarks analysis
7. Attacking private registry
8. NodePort exposed services
9. Helm v2 tiller to PwN the cluster
10. Analysing crypto miner container
11. Kubernetes Namespaces bypass
12. Gaining environment information
13. DoS the memory/cpu resources
14. Hacker Container preview

## ⚠️ Disclaimer

> Kubernetes Goat creates intentionally vulnerable resources into your cluster. DO NOT deploy Kubernetes Goat in a production environment or alongside any sensitive cluster resources.

> Kubernetes Goat comes with absolutely no warranties whatsoever. By using Kubernetes Goat, you take full responsibility for any and all outcomes that result.
