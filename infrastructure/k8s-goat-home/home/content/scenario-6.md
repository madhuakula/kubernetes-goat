---
scenario: 6
title: Kubernetes CIS Benchmarks analysis
notes:
    - kubectl apply -f scenarios/kube-bench-security/node-job.yaml
    - kubectl apply -f scenarios/kube-bench-security/master-job.yaml
label: Scenario
---

# Kubernetes CIS Benchmarks analysis

This scenario is mainly to perform the Kubernetes CIS benchmarks analysis on top of Kubernetes nodes to identify the possible security vulnerabilities. 

To get started with this scenario you can either access the node and perform by following kube-bench security or run the following command to deploy kube-bench as Kubernetes job
