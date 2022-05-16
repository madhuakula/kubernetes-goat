---
scenario: 8
title: NodePort exposed services
notes:
    - kubectl get nodes -o wide
label: Scenario
---

# NodePort exposed services

If any of the user has exposed any service with in the Kubernetes cluster with NodePort. This means, if the nodes where the Kubernetes clusters running doesn't have any firewall/network security enabled. We ned seeing some unauthenticated an unauthorized services. 

To get started with the scenario, run the following command and look for open ports in the Kubernetes Nodes

> When Kubernetes creates a NodePort service, it allocates a port from a range specified in the flags that define your Kubernetes cluster. (By default, these are ports ranging from 30000-32767.)
