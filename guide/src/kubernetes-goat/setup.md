# Kubernetes Goat Setup

This document explains the steps to setup the Kubernetes Goat in your Kubernetes Cluster.

> Please do not setup Kuberenetes Goat in your production workloads, as this is designed to be intentionally vulnerable.

## Free online Kubernetes Goat playground

[![Kubernetes playground by Katacoda](images/kubernetes-goat-katacoda.png)](https://katacoda.com/madhuakula/scenarios/kubernetes-goat)

**[https://katacoda.com/madhuakula/scenarios/kubernetes-goat](https://katacoda.com/madhuakula/scenarios/kubernetes-goat)**

## Pre-requisites

* Ensure you have admin access to the Kubernetes cluster
  * Refer to kubectl releases for binaries [https://kubernetes.io/docs/tasks/tools/install-kubectl/](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
  * Verify by running `kubectl version`
* Ensure you have helm version 2 setup in path as `helm2`
  * Refer to helm version 2 releases for binaries [https://github.com/helm/helm/releases](https://github.com/helm/helm/releases)
  * Verify by running `helm2 version`

## Setting up Kubernetes Goat

* To setup the Kubernetes Goat resources in your cluster, run the following commands

```bash
git clone https://github.com/madhuakula/kubernetes-goat.git
cd kubernetes-goat
bash setup-kubernetes-goat.sh
```
