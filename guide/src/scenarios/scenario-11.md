# Kubernetes Namespaces bypass

## Scenario Information

By default, Kubernetes uses a flat networking schema, which means any pod/service within the cluster can talk to other. The namespaces within the cluster don't have any network security restrictions by default. Anyone in the namespace can talk to other namespaces. We heard that Kubernetes-Goat loves cache. Let's see if we gain access to other namespaces

* To get started with the scenario, let's run our awesome `hacker-container` in the default namespace

```bash
kubectl run -it hacker-container --image=madhuakula/hacker-container -- sh
```

![Scenario 11 Welcome](images/sc-11-1.png)

## Scenario Solution

* Get the cluster IP range information

```bash
ip route
ifconfig
printenv
```

![Scenario 11 recon](images/sc-11-2.png)

* Based on the analysis/understanding about the system. We can run the internal scan for the entire cluster range using `zamp` on port 6379 (the default port of Redis)

```bash
zmap -p 6379 10.0.0.0/8 -o results.csv
```

Note: to run `zmap` on 10.0.0.0/8 you may need adjust the blacklist (/etc/zmap/blacklist.conf)

![Scenario 11 zmap](images/sc-11-3.png)
![Scenario 11 output ips](images/sc-11-4.png)

> There is also another way to access the services/pods in the Kubernetes. For example using the [DNS](https://kubernetes.io/docs/concepts/services-networking/service/#dns) `cache-store-service.secure-middleware` (servicename.namespace).

* Let's access the `redis` using the `reds-cli` client

```bash
redis-cli -h 10.12.0.2
KEYS *
GET SECRETSTUFF
```

![Scenario 11 redis access](images/sc-11-5.png)

> There are many other services and resources exposed within the cluster like ElasticSearch, Mongo, etc. So if your recon skill is good then you got a gold mine here.

## Miscellaneous

TBD
