---
title: 🎯 Ludus
---

# 🎯 Ludus - Automated Cyber Range

[Ludus](https://ludus.cloud) is an automated cyber range platform built on Proxmox. It uses Ansible roles to configure VMs, making Kubernetes Goat deployment fully automated.

## Prerequisites

- Ludus installed and running
- `debian-12-x64-server-template` built (`ludus templates list`)
- VM with at least 4 vCPU and 8 GB RAM
- The VM must have internet access during deployment — the role pulls ~2 GB of container images on first deploy

## Setup

* Add the Kubernetes Goat Ansible role to your Ludus host
```bash
ludus ansible roles add bu5h-d.ludus_kubernetes_goat
```

* Get your range config and add the Kubernetes Goat VM
```bash
ludus range config get > config.yml
```

* Add the following to your `config.yml`
```yaml
ludus:
  - vm_name: "{{ range_id }}-k8s-goat"
    hostname: "{{ range_id }}-k8sgoat"
    template: debian-12-x64-server-template
    vlan: 20
    ip_last_octet: 10
    ram_gb: 8
    cpus: 4
    linux: true
    testing:
      snapshot: false
      block_internet: false
    roles:
      - bu5h-d.ludus_kubernetes_goat
```

* Deploy the range
```bash
ludus range config set -f config.yml
ludus range deploy -t user-defined-roles
```

* Once deployment is complete, access Kubernetes Goat at
```
http://<VM_IP>:1234
```

:::info
Deployment takes approximately 19 minutes on first run — mostly due to container image pulls (~2 GB). All scenarios are accessible at ports 1230–1236 and persist across reboots automatically.
:::

* Now we have the Kubernetes Goat setup up and running, refer to [Getting Started for next steps](https://madhuakula.com/kubernetes-goat/docs/getting-started-with-kubernetes-goat)

## Resources

- Ansible Role: https://github.com/bu5h-d/ludus_kubernetes_goat
- Ansible Galaxy: https://galaxy.ansible.com/ui/standalone/roles/bu5h-d/ludus_kubernetes_goat
- Ludus: https://ludus.cloud
