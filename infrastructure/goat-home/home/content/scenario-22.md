---
scenario: 22
title: Securing Kubernetes Clusters using Kyverno Policy Engine
notes:
    - helm repo add kyverno https://kyverno.github.io/kyverno/
    - helm repo update
    - helm install kyverno kyverno/kyverno -n kyverno --create-namespace
label: Scenario
---

# Securing Kubernetes Clusters using Kyverno Policy Engine

This scenario is to deploy a simple Kyverno Policy for Kubernetes resources to restrict anyone to `exec` into the pods in `vault` namespace. Then validate this policy is enforced by trying to `exec` into the pod in `vault` namespace.
