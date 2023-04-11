---
sidebar_position: 8
sidebar_label: 🔟 OWASP Kubernetes Top 10
slug: /owasp-kubernetes-top-ten
title: 🔟 OWASP Kubernetes Top 10
---

## 📝 👀 TL ; DR


| OWASP Kubernetes Top 10 | Kubernetes Goat Mapped Scenarios|
| ------------ | --------------- |
| <a href="https://owasp.org/www-project-kubernetes-top-ten/2022/en/src/K01-insecure-workload-configurations" target="_blank">K01: Insecure Workload Configurations</a> | <a class="scenario-button" href="scenarios/scenario-2/docker-in-docker-exploitation-in-kubernetes-containers">⎈ DIND (docker-in-docker) exploitation</a> <a class="scenario-button" href="scenarios/scenario-13/denial-of-service-memory-and-cpu-resources-in-kubernetes-cluster">⎈ DoS the Memory/CPU resources</a> |
| <a href="https://owasp.org/www-project-kubernetes-top-ten/2022/en/src/K02-supply-chain-vulnerabilities" target="_blank">K02: Supply Chain Vulnerabilities</a> | <a class="scenario-button" href="scenarios/scenario-7/attacking-private-container-registry-in-kubernetes">⎈ Attacking private registry</a>  |
| <a href="https://owasp.org/www-project-kubernetes-top-ten/2022/en/src/K03-overly-permissive-rbac" target="_blank">K03: Overly Permissive RBAC</a> | <a class="scenario-button" href="scenarios/scenario-16/rbac-least-privileges-misconfiguration-in-kubernetes-cluster">⎈ RBAC least privileges misconfiguration</a>  |
| <a href="https://owasp.org/www-project-kubernetes-top-ten/2022/en/src/K04-policy-enforcement" target="_blank">K04: Lack of Centralized Policy Enforcement</a> | <a class="scenario-button" href="scenarios/scenario-22/securing-kubernetes-clusters-using-kyverno-policy-engine">⎈ Securing Kubernetes Clusters using Kyverno Policy Engine</a>  |
| <a href="https://owasp.org/www-project-kubernetes-top-ten/2022/en/src/K05-inadequate-logging" target="_blank">K05: Inadequate Logging and Monitoring</a> | <a class="scenario-button" href="scenarios/scenario-21/ebpf-runtime-security-monitoring-and-detection-in-kubernetes-cluster-using-cilium-tetragon">⎈ Cilium Tetragon - eBPF-based Security Observability and Runtime Enforcement</a><a class="scenario-button" href="scenarios/scenario-18/runtime-security-monitoring-and-detection-in-kubernetes-cluster-using-falco">⎈ Falco - Runtime security monitoring & detection</a>  |
| <a href="https://owasp.org/www-project-kubernetes-top-ten/2022/en/src/K06-broken-authentication" target="_blank">K06: Broken Authentication Mechanisms</a> | <a class="scenario-button" href="scenarios/scenario-16/rbac-least-privileges-misconfiguration-in-kubernetes-cluster">⎈ RBAC least privileges misconfiguration</a>  |
| <a href="https://owasp.org/www-project-kubernetes-top-ten/2022/en/src/K07-network-segmentation" target="_blank">K07: Missing Network Segmentation Controls</a> | <a class="scenario-button" href="scenarios/scenario-11/kubernetes-namespaces-bypass-from-kubernetes-cluster-pod">⎈ Kubernetes namespaces bypass</a> <a class="scenario-button" href="scenarios/scenario-20/secure-kubernetes-using-network-security-policy">⎈ Secure network boundaries using NSP</a> |
| <a href="https://owasp.org/www-project-kubernetes-top-ten/2022/en/src/K08-secrets-management" target="_blank">K08: Secrets Management Failures</a> | <a class="scenario-button" href="scenarios/scenario-1/sensitive-keys-in-codebases-in-kubernetes-containers">⎈ Sensitive keys in codebases</a>  |
| <a href="https://owasp.org/www-project-kubernetes-top-ten/2022/en/src/K09-misconfigured-cluster-components" target="_blank">K09: Misconfigured Cluster Components</a> | <a class="scenario-button" href="scenarios/scenario-17/auditing-the-kubernetes-cluster-using-kubeaudit">⎈ KubeAudit - Audit Kubernetes cluster</a>  |
| <a href="https://owasp.org/www-project-kubernetes-top-ten/2022/en/src/K09-misconfigured-cluster-components" target="_blank">K10: Outdated and Vulnerable Kubernetes Components</a> | <a class="scenario-button" href="scenarios/scenario-9/helm-v2-tiller-to-pwn-kubernetes-cluster-takeover">⎈ Helm v2 tiller to PwN the cluster - [Deprecated]</a>  |


The OWASP Kubernetes Top 10 is a framework designed to assist security practitioners, system administrators, and software developers in identifying and prioritizing security threats specific to the Kubernetes ecosystem. The Top Ten list provides a prioritized and comprehensive set of security risks that should be addressed to ensure the safety and stability of applications and infrastructure. By following the guidelines outlined in the OWASP Kubernetes Top 10, organizations can better protect their systems and prevent potential security breaches.

The OWASP Kubernetes Top 10 is a great resource to use in conjunction with Kubernetes Goat, as it provides a comprehensive list of the most significant security risks that may be present in a Kubernetes cluster. By applying the knowledge gained from the OWASP Kubernetes Top 10 to the Kubernetes Goat environment, users can gain hands-on experience in identifying and mitigating potential security vulnerabilities.

## 1️⃣ K01: Insecure Workload Configurations

Kubernetes manifests have configurations that impact reliability, security, and scalability of workloads. Regular auditing and remediation is important. High-impact configurations include: 
- Application processes should not run as root
- Read-only filesystems should be used
- Privileged containers should be disallowed

Read More - <a href="https://owasp.org/www-project-kubernetes-top-ten/2022/en/src/K01-insecure-workload-configurations" target="_blank">K01: Insecure Workload Configurations</a>

### 🧰 Related Kubernetes Scenarios
- [DIND (docker-in-docker) exploitation](scenarios/scenario-2/scenario-2.md)
- [DoS the Memory/CPU resources](scenarios/scenario-13/scenario-13.md)

## 2️⃣ K02: Supply Chain Vulnerabilities

Containers play a crucial role in the development lifecycle supply chain and come in different forms at various phases. Each container presents unique security challenges due to the hundreds of third-party components and dependencies it may rely on, making it difficult to establish trust at each stage.
The main security challenges posed by containers include, but are not limited to, the following:
- **Image integrity**: Ensuring that container images are free from unauthorized or malicious modifications.
- **Image composition**: Identifying and verifying all the components and dependencies that are included in a container image.
- **Known software vulnerabilities**: Mitigating the risks posed by vulnerabilities that have been discovered in the software components used in a container image.

Read More - <a href="https://owasp.org/www-project-kubernetes-top-ten/2022/en/src/K02-supply-chain-vulnerabilities" target="_blank">K02: Supply Chain Vulnerabilities</a>

### 🧰 Related Kubernetes Scenarios
- [Attacking private registry](scenarios/scenario-7/scenario-7.md)

## 3️⃣ K03: Overly Permissive RBAC

Role-Based Access Control (RBAC) is the main authorization mechanism in Kubernetes, providing permissions for resources. RBAC permissions combine verbs (get, create, delete, etc.) with resources such as pods, services, and nodes. These permissions can be either namespace or cluster scoped.

Read More - <a href="https://owasp.org/www-project-kubernetes-top-ten/2022/en/src/K03-overly-permissive-rbac" target="_blank">K03: Overly Permissive RBAC</a>

### 🧰 Related Kubernetes Scenarios
- [RBAC least privileges misconfiguration](scenarios/scenario-16/scenario-16.md)

## 4️⃣ K04: Lack of Centralized Policy Enforcement

Managing security policies across multiple Kubernetes clusters and environments can be challenging. Without a centralized location to detect, remediate, and prevent misconfigurations, clusters can be left open to compromise. To ensure a consistent security posture, policy enforcement should take place at various stages of the software delivery lifecycle.

This includes applying policies during the build stage to ensure that container images meet security requirements, during deployment to validate that the desired state of the application complies with the security policy, and continuously during runtime to maintain compliance. By implementing policy enforcement at these stages, organizations can ensure that Kubernetes workloads are secure and compliant across all clusters and environments. This approach offers a way to apply governance, compliance, and security requirements throughout a multi-cluster/multi-cloud infrastructure, without overwhelming security teams with unmanageable complexity.

Read More - <a href="https://owasp.org/www-project-kubernetes-top-ten/2022/en/src/K04-policy-enforcement" target="_blank">K04: Lack of Centralized Policy Enforcement</a>

### 🧰 Related Kubernetes Scenarios
- [Securing Kubernetes Clusters using Kyverno Policy Engine](scenarios/scenario-22/scenario-22.md)

## 5️⃣ K05: Inadequate Logging and Monitoring

Kubernetes environments has the ability to create logs at different level and from all the associated components. It becomes an issue when the logs are not monitored for unusual events like failed authentication attempts, access to sensitive resources, manual deletion or modification of Kubernetes resources, etc., alerting thresholds are not set, logs are not centrally stored, or logging infrastructure is disabled.

Read More - <a href="https://owasp.org/www-project-kubernetes-top-ten/2022/en/src/K05-inadequate-logging" target="_blank">K05: Inadequate Logging and Monitoring</a>

### 🧰 Related Kubernetes Scenarios
- [Cilium Tetragon - eBPF-based Security Observability and Runtime Enforcement](scenarios/scenario-21/scenario-21.md)
- [Falco - Runtime security monitoring & detection](scenarios/scenario-18/scenario-18.md)

## 6️⃣ K06: Broken Authentication Mechanisms

Kubernetes offers a high level of authentication flexibility, allowing it to work effectively in various environments. However, this flexibility also poses challenges when it comes to cluster and cloud security posture.

To access the Kubernetes API, several entities require authentication. The authentication process for Kubernetes API is done via HTTP request and can differ from cluster to cluster. If a request cannot be authenticated, it is rejected with an HTTP status of 401.

Generally a human authentication or a service account authentication is used to authenticate to Kubernetes API.

Read More - <a href="https://owasp.org/www-project-kubernetes-top-ten/2022/en/src/K06-broken-authentication" target="_blank">K06: Broken Authentication Mechanisms</a>

### 🧰 Related Kubernetes Scenarios
- [RBAC least privileges misconfiguration](scenarios/scenario-16/scenario-16.md)
- TODO


## 7️⃣ K07: Missing Network Segmentation Controls

Kubernetes network traffic control is a major concern when managing multiple microservices and tenants. The flat networking structure allows workloads to communicate without restrictions, which can be exploited by attackers to probe and traverse the internal network or call private APIs.

Read More - <a href="https://owasp.org/www-project-kubernetes-top-ten/2022/en/src/K07-network-segmentation" target="_blank">K07: Missing Network Segmentation Controls</a>

### 🧰 Related Kubernetes Scenarios
- [Kubernetes namespaces bypass](scenarios/scenario-11/scenario-11.md)
- [Secure network boundaries using NSP](scenarios/scenario-20/scenario-20.md)


## 8️⃣ K08: Secrets Management Failures

Kubernetes secrets are used to store small objects and are created like any other Kubernetes object. The secrets are defined in `.yaml` manifests that encode sensitive data such as usernames and passwords. However, these values are encoded and not encrypted by default and can be easily decoded, making it risky to check secrets into version control or other systems.

Read More - <a href="https://owasp.org/www-project-kubernetes-top-ten/2022/en/src/K08-secrets-management" target="_blank">K08: Secrets Management Failures</a>

### 🧰 Related Kubernetes Scenarios
- [Sensitive keys in codebases](scenarios/scenario-1/scenario-1.md)
- TODO

## 9️⃣ K09: Misconfigured Cluster Components

Misconfigurations in key components of Kubernetes can lead to a complete cluster compromise or worse. The Kubernetes control plane and nodes consist of various components that can be easily misconfigured, such as kubelet, etcd, kube-apiserver, and more.

Read More - <a href="https://owasp.org/www-project-kubernetes-top-ten/2022/en/src/K09-misconfigured-cluster-components" target="_blank">K09: Misconfigured Cluster Components</a>

### 🧰 Related Kubernetes Scenarios
- [KubeAudit - Audit Kubernetes clusters](scenarios/scenario-17/scenario-17.md)


## 🔟 K10: Outdated and Vulnerable Kubernetes Components

A Kubernetes cluster can present challenges when it comes to traditional patch and vulnerability management. Misconfigurations in popular tools such as ArgoCD, Kubernetes itself, and Istio have led to serious CVEs. 
* ArgoCD has had parsing vulnerabilities that allow attackers to load malicious Helm Charts and access sensitive information. 
* ingress-nginx had a CVE allowing users to obtain all secrets in a cluster, which was not addressable by simply upgrading the version. 
* Istio had an authentication bypass vulnerability that allowed unauthorized access to protected paths. 

To ensure the security of multiple clusters, maintaining an accurate inventory and minimum Kubernetes version across environments is important.

Read More - <a href="https://owasp.org/www-project-kubernetes-top-ten/2022/en/src/K09-misconfigured-cluster-components" target="_blank">K10: Outdated and Vulnerable Kubernetes Components</a>

### 🧰 Related Kubernetes Scenarios
- [Helm v2 tiller to PwN the cluster - [Deprecated]](scenarios/scenario-9/scenario-9.md)

## References
- <a href="https://owasp.org/www-project-kubernetes-top-ten/" target="_blank">OWASP Kubernetes Top 10 Documentation</a>

