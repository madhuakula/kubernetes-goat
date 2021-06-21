---
scenario: 9
title: Helm v2 tiller to PwN the cluster
notes:
    - kubectl run --rm --restart=Never -it --image=madhuakula/k8s-goat-helm-tiller -- bash
label: Scenario
---

# Helm v2 tiller to PwN the cluster

Helm is a package manager for Kubernetes. It's like apt-get for ubuntu. In this scenario, we will see the older version of helm (version 2), tiller service RBAC default setup to gain access to the completed cluster. 

To get started with the scenario, run the following command
