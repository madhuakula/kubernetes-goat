---
sidebar_label: 📝 Kubescape
---

# 📝 Kubescape - Kubernetes Goat Report

:::info

Kubescape is a K8s open-source tool providing a multi-cloud K8s single pane of glass, including risk analysis, security compliance, RBAC visualizer and image vulnerabilities scanning. Checkout the project documentation at [https://github.com/armosec/kubescape](https://github.com/armosec/kubescape)

::: info

## 🙌 Overview

:::tip Kubescape scan results

* Kubescape has detected total **205** issues
  * HIGH: 30
  * MEDIUM: 110
  * LOW: 65

:::

:::danger Frameworks

* DevOpsBest (risk: 67.17 %)
* MITRE (risk: 18.38 %)
* ArmoBest (risk: 43.02 %)
* NSA (risk: 43.47 %)

:::

## 🔥 Kubescape Report

| SEVERITY | CONTROL NAME                           | FAILED RESOURCES | EXCLUDED RESOURCES | ALL RESOURCES | % RISK-SCORE |
| -------- | -------------------------------------- | ---------------- | ------------------ | ------------- | ------------ |
| High     | List Kubernetes secrets                | 1                | 0                  | 1             | 100%         |
| High     | Privileged container                   | 3                | 0                  | 13            | 23%          |
| High     | Resources CPU limit and request        | 11               | 0                  | 13            | 85%          |
| High     | Resources memory limit and request     | 13               | 0                  | 13            | 100%         |
| High     | Writable hostPath mount                | 2                | 0                  | 13            | 15%          |
| Medium   | Allow privilege escalation             | 13               | 0                  | 13            | 100%         |
| Medium   | Allowed hostPath                       | 2                | 0                  | 13            | 15%          |
| Medium   | Automatic mapping of service account   | 3                | 0                  | 15            | 20%          |
| Medium   | CVE-2022-0492-cgroups-container-escape | 10               | 0                  | 13            | 77%          |
| Medium   | Cluster internal networking            | 2                | 0                  | 2             | 100%         |
| Medium   | Configured liveness probe              | 9                | 0                  | 9             | 100%         |
| Medium   | Containers mounting Docker socket      | 2                | 0                  | 13            | 15%          |
| Medium   | Host PID/IPC privileges                | 4                | 0                  | 13            | 31%          |
| Medium   | HostNetwork access                     | 2                | 0                  | 13            | 15%          |
| Medium   | HostPath mount                         | 4                | 0                  | 13            | 31%          |
| Medium   | Images from allowed registry           | 13               | 0                  | 13            | 100%         |
| Medium   | Ingress and Egress blocked             | 13               | 0                  | 13            | 100%         |
| Medium   | Linux hardening                        | 13               | 0                  | 13            | 100%         |
| Medium   | Mount service principal                | 4                | 0                  | 13            | 31%          |
| Medium   | Namespace without service accounts     | 1                | 0                  | 4             | 25%          |
| Medium   | Network mapping                        | 2                | 0                  | 2             | 100%         |
| Medium   | Non-root containers                    | 13               | 0                  | 13            | 100%         |
| Low      | Configured readiness probe             | 9                | 0                  | 9             | 100%         |
| Low      | Immutable container filesystem         | 13               | 0                  | 13            | 100%         |
| Low      | K8s common labels usage                | 13               | 0                  | 13            | 100%         |
| Low      | Label usage for resources              | 13               | 0                  | 13            | 100%         |
| Low      | Pods in default namespace              | 11               | 0                  | 13            | 85%          |
| Low      | Resource policies                      | 6                | 0                  | 13            | 46%          |
|          |                                        |                  |                    |               |              |
|          | **RESOURCE SUMMARY**                   | **18**           | **0**              | **18**        | **45.90%**   |

