---
scenario: 7
title: Attacking private registry
notes:
    - To get started with the scenario, navigate to http://127.0.0.1:1235
label: Scenario
---

# Attacking private registry

Container registry is the place where all the container images gets pushed. Most of the time each organization have their own private registry. Also sometimes it ends up misconfigured, public/open. On the other hand, developers assumes that it's internal private registry only and end up storing all the sensitive information inside the container images. Let's see what we can find here.
