---
sidebar_position: 1
title: ☸️ Kubernetes
slug: kubernetes-goat-on-kubernetes
---

# ☸️ Kubernetes - Standard Cluster

If you are already having a Kubernetes standard vanilla cluster environment and wanted to set up Kubernetes Goat, then you are in the right place. The below section contains the step-by-step instructions to set up the Kubernetes Goat in the standard cluster.

### Prerequisites

* Ensure you have cluster-admin access to the Kubernetes cluster.
  * Also you have installed the `kubectl` and in the path, [refer to the docs for installation](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
  * Verify by running `kubectl version`
* Ensure you have the `helm` package manager installed and the path, [refer to the docs for installation](https://helm.sh/docs/intro/install)
  * Verify by running `helm version`

### Setup

* First, clone the Kubernetes Goat repository locally by running the following command

```bash
git clone https://github.com/madhuakula/kubernetes-goat.git
```

* Navigate to the folder for setup and installation of the Kubernetes Goat

```bash
cd kubernetes-goat
```

* Run the following script to set up and deploy the Kubernetes Goat resources into your cluster

```bash
bash setup-kubernetes-goat.sh
```

* Now we have the Kubernetes Goat setup up and running, refer to [Getting Started for next steps](../getting-started)
