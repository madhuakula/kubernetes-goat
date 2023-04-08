---
scenario: 21
title: Cilium Tetragon - eBPF-based Security Observability and Runtime Enforcement
notes:
    - helm repo add cilium https://helm.cilium.io
    - helm repo update
    - helm install tetragon cilium/tetragon -n kube-system
label: Scenario
---

# Cilium Tetragon - eBPF-based Security Observability and Runtime Enforcement

This scenario is to deploy runtime security monitoring & detection for containers and Kubernetes resources. Also, explore and see how we can detect certain issues and perform detections using `tracingpolicy` based on attacker triggers.
