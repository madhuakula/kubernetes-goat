---
scenario: 11
title: Kubernetes namespaces bypass
notes:
    - kubectl run -it hacker-container --image=madhuakula/hacker-container -- sh
label: Scenario
---

# Kubernetes namespaces bypass

By default Kubernetes uses flat networking schema, which means any pod/service with in the cluster can talk to other. The namespaces with in the cluster doesn't have any network security restrictions by default. Anyone in the any namespace can talk to other namespace. We heard that Kubernetes-Goat loves cache. Let's see if we can gain access to other namespaces

To get started with the scenario, let's run our awesome hacker-container in default namespace
