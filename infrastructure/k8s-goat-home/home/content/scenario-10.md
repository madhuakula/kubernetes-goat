---
scenario: 10
title: Analysing crypto miner container
notes:
    - kubectl get jobs
label: Scenario
---

# Analysing crypto miner container

Crypto mining has became popular with these modern infrastructure. Especially environments like Kubernetes is easy target as you might not event look what exactly the container image built upon and what it is doing with proactive monitoring. Here in this scenario, we will analyse and identify the crypto miner.

To get started, identify all the resources/images in the Kubernetes cluster. Including Kubernetes Jobs 
