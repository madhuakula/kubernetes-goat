---
sidebar_position: 3
sidebar_label: MITRE ATT&CK
slug: /mitre/mitre-attack
title: MITRE ATT&CK
---

## 📝 TL ; DR

|       **[Initial Access](#-tactic---initial-access)**       |            **[Execution](#-tactic---execution)**            |         **[Persistence](#-tactic---persistence)**        | **[Privilege Escalation](#-tactic---privilege-escalation)** |       **[Defense Evasion](#-tactic---defense-evasion)**       |              **[Credential Access](#-tactic---credential-access)**              |        **[Discovery](#-tactic---discovery)**        |               **[Lateral Movement](#-tactic---lateral-movement)**              |         **[Collection](#-tactic---collection)**         |     **[Impact](#-tactic---impact)**     |
|:------------------------------:|:-----------------------------------:|:------------------------------:|:------------------------:|:-------------------------------:|:-----------------------------------------------:|:---------------------------:|:-----------------------------------------------:|:------------------------------:|:------------------:|
|     Using Cloud credentials    |         Exec into container         |       Backdoor container       |   Privileged container   |       Clear container logs      |                 List K8S secrets                |  Access the K8S API server  |              Access cloud resources             | Images from a private registry |  Data Destruction  |
| Compromised images in registry |      bash/cmd inside container      |     Writable hostPath mount    |   Cluster-admin binding  |        Delete K8S events        |             Mount service principal             |      Access Kubelet API     |            Container service account            |                                | Resource Hijacking |
|         Kubeconfig file        |            New container            |       Kubernetes CronJob       |      hostPath mount      | Pod / container name similarity |         Access container service account        |       Network mapping       |           Cluster internal networking           |                                |  Denial of service |
|    Application vulnerability   |      Application exploit (RCE)      | Malicious admission controller |  Access cloud resources  |    Connect from Proxy server    | Applications credentials in configuration files | Access Kubernetes dashboard | Applications credentials in configuration files |                                |                    |
|        Exposed Dashboard       | SSH server running inside container |                                |                          |                                 |        Access managed identity credential       |    Instance Metadata API    |        Writable volume mounts on the host       |                                |                    |
|  Exposed sensitive interfaces  |          Sidecar injection          |                                |                          |                                 |          Malicious admission controller         |                             |           Access Kubernetes dashboard           |                                |                    |
|                                |                                     |                                |                          |                                 |                                                 |                             |              Access tiller endpoint             |                                |                    |
|                                |                                     |                                |                          |                                 |                                                 |                             |                CoreDNS poisoning                |                                |                    |
|                                |                                     |                                |                          |                                 |                                                 |                             |          ARP poisoning and IP spoofing          |                                |                    |

The MITRE ATT&CK® (Adversarial Tactics, Techniques and Common Knowledge) framework is a globally-accessible knowledge base of adversary tactics and techniques based on real-world observations. In this framework, here we cover the Tactics, Techniques, and Procedures (TTPs) to map Kubernetes Security risks and also the related Kubernetes Goat scenarios.

- Learn more about MITRE ATT&CK framework at [https://attack.mitre.org](https://attack.mitre.org)
- Learn more about MITRE ATT&CK framework for Kubernetes at [https://microsoft.github.io/Threat-Matrix-for-Kubernetes](https://microsoft.github.io/Threat-Matrix-for-Kubernetes)

## 🔥 Tactic - Initial Access

The initial access tactic consists of techniques that are used for gaining access to the resource. In containerized environments, those techniques enable first access to the cluster. This access can be achieved directly via the cluster management layer or, alternatively, by gaining access to a malicious or vulnerable resource that is deployed on the cluster.

|  **🧰 Techniques** | **🐐 Kubernetes Goat Scenarios** |
| ------------ | --------------- |
| Using cloud credentials |  |
| Compromised image in registry | <a class="scenario-button" href="/docs/scenarios/scenario-7/attacking-private-container-registry-in-kubernetes">⎈ Attacking private registry</a> |
| Kubeconfig file |  |
| Application vulnerability | <a class="scenario-button" href="/docs/scenarios/scenario-3/ssrf-in-the-kubernetes-world">⎈ SSRF in the Kubernetes (K8S) world</a> <a class="scenario-button" href="/docs/scenarios/scenario-2/docker-in-docker-exploitation-in-kubernetes-containers">⎈ DIND (docker-in-docker) exploitation</a> |
| Exposed sensitive interfaces | <a class="scenario-button" href="/docs/scenarios/scenario-8/misconfigured-nodeport-exposed-service-in-kubernetes">⎈ NodePort exposed services</a> |

## 🔥 Tactic - Execution

The execution tactic consists of techniques that are used by attackers to run their code inside a cluster.

|  **🧰 Techniques** | **🐐 Kubernetes Goat Scenarios** |
| ------------ | --------------- |
| Exec into container | <a class="scenario-button" href="/docs/scenarios/scenario-12/gain-environment-information-in-kubernetes-cluster">⎈ Gaining environment information</a> |
| bash/cmd inside container | <a class="scenario-button" href="/docs/scenarios/scenario-12/gain-environment-information-in-kubernetes-cluster">⎈ Gaining environment information</a> |
| New container | <a class="scenario-button" href="/docs/scenarios/scenario-14/hacker-container-preview-in-kubernetes-cluster">⎈ Hacker container preview</a> |
| Application exploit (RCE) | <a class="scenario-button" href="/docs/scenarios/scenario-2/docker-in-docker-exploitation-in-kubernetes-containers">⎈ DIND (docker-in-docker) exploitation</a> |
| SSH server running inside container | |
| Sidecar injection | |

## 🔥 Tactic - Persistence

The persistence tactic consists of techniques that are used by attackers to keep access to the cluster in case their initial foothold is lost.

|  **🧰 Techniques** | **🐐 Kubernetes Goat Scenarios** |
| ------------ | --------------- |
| Backdoor container | <a class="scenario-button" href="/docs/scenarios/scenario-10/analyzing-crypto-miner-in-kubernetes-cluster-container">⎈ Analyzing crypto miner container</a> |
| Writable hostPath mount | <a class="scenario-button" href="/docs/scenarios/scenario-4/container-escape-to-the-host-system-in-kubernetes-containers">⎈ Container escape to the host system</a> |
| Kubernetes CronJob | <a class="scenario-button" href="/docs/scenarios/scenario-15/hidden-in-container-layers-in-kubernetes-cluster">⎈ Hidden in layers</a> |
| Malicious admission controller | |
| Container service account | <a class="scenario-button" href="/docs/scenarios/scenario-9/helm-v2-tiller-to-pwn-kubernetes-cluster-takeover">⎈ Helm v2 tiller to PwN the cluster - [Deprecated]</a> <a class="scenario-button" href="/docs/scenarios/scenario-16/rbac-least-privileges-misconfiguration-in-kubernetes-cluster">⎈ RBAC least privileges misconfiguration</a> |
| Static pods | |

## 🔥 Tactic - Privilege Escalation

The privilege escalation tactic consists of techniques that are used by attackers to get higher privileges in the environment than those they currently have. In containerized environments, this can include getting access to the node from a container, gaining higher privileges in the cluster, and even getting access to the cloud resources.

|  **🧰 Techniques** | **🐐 Kubernetes Goat Scenarios** |
| ------------ | --------------- |
| Privileged container | <a class="scenario-button" href="/docs/scenarios/scenario-4/container-escape-to-the-host-system-in-kubernetes-containers">⎈ Container escape to the host system</a> |
| Cluster-admin binding | <a class="scenario-button" href="/docs/scenarios/scenario-9/helm-v2-tiller-to-pwn-kubernetes-cluster-takeover">⎈ Helm v2 tiller to PwN the cluster - [Deprecated]</a> |
| hostPath mount | <a class="scenario-button" href="/docs/scenarios/scenario-4/container-escape-to-the-host-system-in-kubernetes-containers">⎈ Container escape to the host system</a> |
| Access cloud resources | <a class="scenario-button" href="/docs/scenarios/scenario-3/ssrf-in-the-kubernetes-world">⎈ SSRF in the Kubernetes (K8S) world</a> |

## 🔥 Tactic - Defense Evasion

The defense evasion tactic consists of techniques that are used by attackers to avoid detection and hide their activity.

|  **🧰 Techniques** | **🐐 Kubernetes Goat Scenarios** |
| ------------ | --------------- |
| Clear container logs | <a class="scenario-button" href="/docs/scenarios/scenario-4/container-escape-to-the-host-system-in-kubernetes-containers">⎈ Container escape to the host system</a> |
| Delete K8S events | <a class="scenario-button" href="/docs/scenarios/scenario-9/helm-v2-tiller-to-pwn-kubernetes-cluster-takeover">⎈ Helm v2 tiller to PwN the cluster - [Deprecated]</a> |
| Pod / container name similarity | <a class="scenario-button" href="/docs/scenarios/scenario-14/hacker-container-preview-in-kubernetes-cluster">⎈ Hacker container preview</a> |
| Connect from proxy server |  |

## 🔥 Tactic - Credential Access

The credential access tactic consists of techniques that are used by attackers to steal credentials. In containerized environments, this includes credentials of the running application, identities, secrets stored in the cluster, or cloud credentials.

|  **🧰 Techniques** | **🐐 Kubernetes Goat Scenarios** |
| ------------ | --------------- |
| List K8S secrets| <a class="scenario-button" href="/docs/scenarios/scenario-16/rbac-least-privileges-misconfiguration-in-kubernetes-cluster">⎈ RBAC least privileges misconfiguration</a> |
| Mount service principal| |
| Container service account| <a class="scenario-button" href="/docs/scenarios/scenario-16/rbac-least-privileges-misconfiguration-in-kubernetes-cluster">⎈ RBAC least privileges misconfiguration</a> |
| Application credentials in configuration files| |
| Access managed identity credentials| |
| Malicious admission controller| |

## 🔥 Tactic - Discovery

The discovery tactic consists of techniques that are used by attackers to explore the environment to which they gained access. This exploration helps the attackers to perform lateral movement and gain access to additional resources.

|  **🧰 Techniques** | **🐐 Kubernetes Goat Scenarios** |
| ------------ | --------------- |
| Access Kubernetes API server | <a class="scenario-button" href="/docs/scenarios/scenario-17/auditing-the-kubernetes-cluster-using-kubeaudit">⎈ KubeAudit - Audit Kubernetes clusters</a> |
| Access Kubelet API | <a class="scenario-button" href="/docs/scenarios/scenario-4/container-escape-to-the-host-system-in-kubernetes-containers">⎈ Container escape to the host system</a> |
| Network mapping | <a class="scenario-button" href="/docs/scenarios/scenario-11/kubernetes-namespaces-bypass-from-kubernetes-cluster-pod">⎈ Kubernetes namespaces bypass</a> |
| Exposed sensitive interfaces | <a class="scenario-button" href="/docs/scenarios/scenario-11/kubernetes-namespaces-bypass-from-kubernetes-cluster-pod">⎈ Kubernetes namespaces bypass</a> <a class="scenario-button" href="/docs/scenarios/scenario-8/misconfigured-nodeport-exposed-service-in-kubernetes">⎈ NodePort exposed services</a> |
| Instance Metadata API | <a class="scenario-button" href="/docs/scenarios/scenario-3/ssrf-in-the-kubernetes-world">⎈ SSRF in the Kubernetes (K8S) world</a> |

## 🔥 Tactic - Lateral Movement

The lateral movement tactic consists of techniques that are used by attackers to move through the victim’s environment. In containerized environments, this includes gaining access to various resources in the cluster from a given access to one container, gaining access to the underlying node from a container, or gaining access to the cloud environment.

|  **🧰 Techniques** | **🐐 Kubernetes Goat Scenarios** |
| ------------ | --------------- |
| Access cloud resources | <a class="scenario-button" href="/docs/scenarios/scenario-3/ssrf-in-the-kubernetes-world">⎈ SSRF in the Kubernetes (K8S) world</a> |
| Container service account | |
| Cluster internal networking | <a class="scenario-button" href="/docs/scenarios/scenario-11/kubernetes-namespaces-bypass-from-kubernetes-cluster-pod">⎈ Kubernetes namespaces bypass</a> |
| Application credentials in configuration files | |
| Writable hostPath mount | <a class="scenario-button" href="/docs/scenarios/scenario-4/container-escape-to-the-host-system-in-kubernetes-containers">⎈ Container escape to the host system</a> |
| CoreDNS poisoning | |
| ARP poisoning and IP spoofing | <a class="scenario-button" href="/docs/scenarios/scenario-11/kubernetes-namespaces-bypass-from-kubernetes-cluster-pod">⎈ Kubernetes namespaces bypass</a> |

## 🔥 Tactic - Collection

Collection in Kubernetes consists of techniques that are used by attackers to collect data from the cluster or through using the cluster.

|  **🧰 Techniques** | **🐐 Kubernetes Goat Scenarios** |
| ------------ | --------------- |
| Images from a private registry | <a class="scenario-button" href="/docs/scenarios/scenario-7/attacking-private-container-registry-in-kubernetes">⎈ Attacking private registry</a> |
| Collecting data from pod | <a class="scenario-button" href="/docs/scenarios/scenario-12/gain-environment-information-in-kubernetes-cluster">⎈ Gaining environment information</a> |

## 🔥 Tactic - Impact

The Impact tactic consists of techniques that are used by attackers to destroy, abuse, or disrupt the normal behavior of the environment.

|  **🧰 Techniques** | **🐐 Kubernetes Goat Scenarios** |
| ------------ | --------------- |
| Data destruction | <a class="scenario-button" href="/docs/scenarios/scenario-2/docker-in-docker-exploitation-in-kubernetes-containers">⎈ DIND (docker-in-docker) exploitation</a> <a class="scenario-button" href="/docs/scenarios/scenario-4/container-escape-to-the-host-system-in-kubernetes-containers">⎈ Container escape to the host system</a> |
| Resource hijacking | <a class="scenario-button" href="/docs/scenarios/scenario-13/denial-of-service-memory-and-cpu-resources-in-kubernetes-cluster">⎈ DoS the Memory/CPU resources</a> |
| Denial of service | <a class="scenario-button" href="/docs/scenarios/scenario-13/denial-of-service-memory-and-cpu-resources-in-kubernetes-cluster">⎈ DoS the Memory/CPU resources</a> |

## 🔖 References

- https://attack.mitre.org/
- https://microsoft.github.io/Threat-Matrix-for-Kubernetes/
