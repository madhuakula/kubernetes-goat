---
sidebar_position: 3
title: ☁️ GCP
slug: kubernetes-goat-on-gcp-google-cloud-platform
---

# ☁️ GCP - Google Cloud Platform

[Google Kubernetes Engine (GKE)](https://cloud.google.com/kubernetes-engine?hl=en) is a managed kubernetes offering by GCP.

### Prerequisites

* You have `gcloud` CLI installed [refer to the docs for installation](https://cloud.google.com/sdk/docs/install-sdk)
  * Verify it is in the path by running `gcloud version`
* Ensure you have `kubectl` installed and in the path, [refer to the docs for installation](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
  * Verify by running `kubectl version`
* Ensure you have the `helm` package manager installed and in the path, [refer to the docs for installation](https://helm.sh/docs/intro/install)
  * Verify by running `helm version`

### Setup

* Ensure you have hour GCP profile configured. Run `gcloud auth login`. Refer to the docs for [configuration](https://cloud.google.com/sdk/docs/initializing)
  * Verify by running `gcloud auth list` to see that you've successfully logged in.

* We will create a new GKE cluster `k8s-goat-cluster`. You can modify the command as you need, run `gcloud container clusters create --help` to see all available options.

```bash
gcloud container clusters create k8s-goat-cluster --location=us-east1
```

:::info

This command will create the GKE clusters. The command will exit, once the clusters are created. The whole setup would take 10-15 minutes.

:::

* Once the cluster is created, you can update your ~/.kube/config file with the following command,

```bash
gcloud container clusters get-credentials k8s-goat-cluster --zone us-east1
```

* Confirm that the cluster has been added to your config and the right context is set by running
`kubectl cluster-info`.

* Then clone the Kubernetes Goat repository locally by running the following command

```bash
git clone https://github.com/madhuakula/kubernetes-goat.git
```

* Navigate to the folder for setup and installation of the Kubernetes Goat

```bash
cd kubernetes-goat/
```

* Run the following script to set up and deploy the Kubernetes Goat resources into your cluster

```bash
bash setup-kubernetes-goat.sh
```

* Now we have the Kubernetes Goat setup up and running, refer to [Getting Started for next steps](../getting-started.md)
