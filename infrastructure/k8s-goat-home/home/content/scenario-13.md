---
scenario: 13
title: DoS the memory/cpu resources
notes:
    - To get started with the scenario, navigate to http://127.0.0.1:1236
label: Scenario
---

# DoS the memory/cpu resources

Whe there is no specification of resources in the Kubernetes manifests and not applied limit ranges for the containers. As an attacker we can consume all the resources where the pod/deployment running and starve other resources and cause a DoS for the environment.
