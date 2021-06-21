---
scenario: 5
title: Docker CIS Benchmarks analysis
notes:
    - kubectl apply -f scenarios/docker-bench-security/deployment.yaml
label: Scenario
---

# Docker CIS Benchmarks analysis

This scenario is mainly to perform the Docker CIS benchmarks analysis on top of Kubernetes nodes to identify the possible security vulnerabilities. 

To get started with this scenario you can either access the node and perform by following docker bench security or run the following command to deploy docker bench security as a DaemonSet

