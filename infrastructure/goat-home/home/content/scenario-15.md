---
scenario: 15
title: Hidden in layers
notes:
    - kubectl get jobs
label: Scenario
---

# Hidden in layers

Sensitive information disclosure is one of the most common vulnerability existing in the wild. Mishandling of passwords, private keys, tokens, etc in containerization world is easy. Here in this scenario, we will analyze and identify one of such mishandled bad practice that leads to sensitive information disclosure.

To get started, identify all the resources/images in the Kubernetes cluster. Including Kubernetes Jobs
