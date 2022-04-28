# 📋 Cheat Sheet - Kubernetes Goat

Below are some commonly useful commands to navigate around Kubernetes, docker, and in general Kubernetes Goat project.

## 🐳 Docker

* To get the docker version

```bash
docker version
```

* To list the running docker containers. To see with all the different states you can add an option `-a` flag

```bash
docker ps
```

* To list the available docker images

```bash
docker images
```

* To run a simple alpine container and exec into it

```bash
docker run -it alpine sh
```

* To show the containers, system, images, and other information

```bash
docker info
```

* To exec into an existing running container
  
```bash
docker exec -it <CONTAINER NAME> sh
```

* To inspect a container or image

```bash
docker inspect <CONTAINER NAME>
docker inspect <IMAGE NAME>
```

* Search through all public available images in docker hub via CLI command

```bash
docker search nginx
```

## ☸️ Kubernetes

* To get the Kubernetes server version

```bash
kubectl version
```

* To get Kubernetes cluster information

```bash
kubectl cluster-info
```

* To get node information

```bash
kubectl get nodes
```

* To get pods details in the current namespace

```bash
kubectl get pods
```

:::tip

To get similarly other resources information like services, namespaces, deployments, ingress, secrets, etc. Also, we can use shorthand notation as mentioned below rather than specifying the full name of the resource

```bash
kubectl get svc
kubectl get ing
kubectl get ns
kubectl get deploy
kubectl get secrets
```

:::

* To get more detailed information on the resource

```bash
kubectl get pods -o wide
```

* Information of the resource with descriptively

```bash
kubectl describe pod <PODNAME>
```

* To get a shell inside the pod container

```bash
kubectl exec -it <PODNAME> sh
```

* Creating simple deployment using the command line

```bash
kubectl run nginxdeployment --image=nginx
```

* To forward the pod port from Kubernetes to locally using the built-in command

```bash
kubectl port-forward <PODNAME> 1234:80
```

* To get the logs of the pod/container

```bash
kubectl logs <PODNAME>
kubectl logs -f <PODNAME>
```

* To delete the pod from the cluster

```bash
kubectl delete pod <PODNAME>
```

* Get resources from other namespaces by specifying the namespace name `abc`

```bash
kubectl get pods -n abc
```

* To get all the available API resources

```bash
kubectl api-resources
```

* Impersonate the users and get the permission to verify and validate using `kubectl`

```bash
kubectl auth can-i create pods
```

* To get any resource output in YAML format

```bash
kubectl get pod <POD NAME> -o yaml
```

* To get multiple commands output in the same command

```bash
kubectl get nodes,pods,svc
```

## 🔖 References

* [Docker CLI Reference](https://docs.docker.com/engine/reference/commandline/cli/)
* [Kubernetes `kubectl` Cheat Sheet](https://kubernetes.io/docs/reference/kubectl/cheatsheet/)
