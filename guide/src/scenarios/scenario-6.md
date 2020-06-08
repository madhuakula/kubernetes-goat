# Kubernetes CIS Benchmarks analysis

## Scenario Information

This scenario is mainly to perform the Kubernetes CIS benchmarks analysis on top of Kubernetes nodes to identify the possible security vulnerabilities.

* To get started with this scenario you can either access the node and perform by following kube-bench security or run the following command to deploy kube-bench as Kubernetes job

```bash
kubectl apply -f scenarios/kube-bench-security/node-job.yaml
kubectl apply -f scenarios/kube-bench-security/master-job.yaml
```

![Scenario 6 Kube bench job](images/sc-6-1.png)

## Scenario Solution

* Now go ahead and get the jobs list and pods information by running the below commands

```
kubectl get jobs
kubectl logs -f kube-bench-node-xxxxx
```

![Scenario 6 Kube bench output](images/sc-6-2.png)

* Now based on the vulnerabilities you see from the Kubernetes CIS benchmarks, you can proceed with further exploitation

## Miscellaneous

TBD
