---
scenario: 19
title: Popeye - A Kubernetes Cluster Sanitizer
notes:
    - kubectl run -n kube-system --serviceaccount=tiller --rm --restart=Never -it --image=madhuakula/hacker-container -- bash
label: Scenario
---

# Popeye - A Kubernetes Cluster Sanitizer

This scenario is mainly to perform the review of Kubernetes Cluster by scanning the live Kubernetes cluster and reports potential issues with deployed resources and configurations.

To get started with this scenario you can run the following command to start the hacker-container with cluster administrator privileges (as tiller service account already has that) 
