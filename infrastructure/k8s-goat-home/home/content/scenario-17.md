---
scenario: 17
title: KubeAudit - Audit Kubernetes Clusters
notes:
    - kubectl run -n kube-system --serviceaccount=tiller --rm --restart=Never -it --image=madhuakula/hacker-container -- bash
label: Scenario
---

# KubeAudit - Audit Kubernetes Clusters

This scenario is mainly to perform the audit of Kubernetes Cluster for various different security concerns.

To get started with this scenario you can run the following command to start the hacker-container with cluster administrator privileges (as tiller service account already has that)
