# Docker CIS Benchmarks analysis

## Scenario Information

This scenario is mainly to perform the Docker CIS benchmarks analysis on top of Kubernetes nodes to identify the possible security vulnerabilities.

* To get started with this scenario you can either access the node and perform by following docker bench security or run the following command to deploy docker bench security as a DaemonSet

```bash
kubectl apply -f scenarios/docker-bench-security/deployment.yaml
kubectl get daemonsets
```

![Scenario 5 Docker bench DS](images/sc-5-1.png)

## Scenario Solution

* Access the each `docker-bench-security-xxxxx` pod based on how many nodes you have in Kubernetes cluster and run the Docker CIS benchmarks

```bash
kubectl exec -it docker-bench-security-xxxxx -- sh
cd docker-bench-security
```

* Run the Docker CIS benchmarks script

```bash
sh docker-bench-security.sh
```

![Scenario 5 Run Docker bench](images/sc-5-2.png)

* Now based on the vulnerabilities you see from the Docker CIS benchmarks, you can proceed with further exploitation

## Miscellaneous

TBD
