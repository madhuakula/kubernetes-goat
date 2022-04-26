---
scenario: 16
title: RBAC least privileges misconfiguration
notes:
    - To get started with the scenario, navigate to http://127.0.0.1:1236
label: Scenario
---

# RBAC least privileges misconfiguration

We commonly see in real-world where developers and devops teams tend to provide extra privileges than required. This happens attackers gaining more control and privieges than they intended to be. In this scenario you can leverage the serviceaccount binded to the pod to provide **webhookapikey** access, but using this attacker can gain control over other secrets and resources. Gain access to the **vaultapikey** secret flag.
