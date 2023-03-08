---
sidebar_label: ☁️ AWS
---

# ☁️ AWS - Amazon Web Services

[Elastic Kubernetes Service (EKS)](https://aws.amazon.com/eks/) is a managed kubernetes offering by AWS.

### Prerequisites

* You have `eksctl` installed [refer to the docs for installation](https://docs.aws.amazon.com/eks/latest/userguide/eksctl.html)
  * Verify it is in the path by running `eksctl version`
* Ensure you have `kubectl` installed and in the path, [refer to the docs for installation](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
  * Verify by running `kubectl version`
* Ensure you have `awscli` installed and it is setup with your AWS account, [refer to the docs for installation](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
  * Verify it is in the path by running aws --version
* Ensure you have the `helm` package manager installed and the path, [refer to the docs for installation](https://helm.sh/docs/intro/install)
  * Verify by running `helm version`

### Setup

* Ensure you have your AWS profile configured. Run `aws configure`. Refer to the docs for [configuration](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html).

* We will create a new EKS cluster `k8s-goat-cluster` with two nodes of type `t4g.medium`. You can modify the command as you need, run `eksctl create cluster --help` to see all available options.

```bash
eksctl create cluster --name k8s-goat-cluster \
--region us-east-1 \
--node-type t4g.medium \
--nodes 2
```

> eksctl will create two Cloud Formation stacks - to create the cluster and another to create node group. The command will exit, once both the Cloud Formation stacks are completed. The whole setup would take around 15–20 minutes.

* Once the cluster is created, you can update your ~/.kube/config file with the following command,

```bash
aws eks update-kubeconfig --name k8s-goat-cluster --region us-east-1
```

* Confirm that the cluster has been added to your config and the right context is set by running 
`kubectl cluster-info`.

* Then clone the Kubernetes Goat repository locally by running the following command

```bash
git clone https://github.com/madhuakula/kubernetes-goat.git
```

* Navigate to the folder for setup and installation of the Kubernetes Goat

```bash
cd kubernetes-goat/
```

* Run the following script to set up and deploy the Kubernetes Goat resources into your cluster

```bash
bash setup-kubernetes-goat.sh
```

* Now we have the Kubernetes Goat setup up and running, refer to [Getting Started for next steps](../getting-started)