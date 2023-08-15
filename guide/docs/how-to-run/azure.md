---
sidebar_position: 5
title: ☁️ Azure
slug: kubernetes-goat-on-microsoft-azure-kubernetes-cluster
---

# ☁️ Microsoft Azure - Cloud Computing Services

[Azure Kubernetes Services (AKS)](https://azure.microsoft.com/en-us/products/kubernetes-service) is Microsoft's managed kubernetes offering running on Azure.

::info

You can find additional information about other methods for deploying AKS cluster in the [official quickstart guides](https://learn.microsoft.com/en-us/azure/aks/learn/quick-kubernetes-deploy-cli) from where the following steps were taken.

:::

### Prerequisites

* You have `Azure CLI` installed [refer to the docs for installation](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest)
  * Verify by running `az --version`
* Ensure you have `kubectl` installed and in the path, [refer to the docs for installation](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
  * If you prefer, you can use Azure CLI to install it by running `az aks install-cli`
  * Verify by running `kubectl version`
* Ensure you have the `helm` package manager installed and the path, [refer to the docs for installation](https://helm.sh/docs/intro/install)
  * Verify by running `helm version`

### Setup

* First log in to your Azure account by running the command `az login` and follow the instructions. For alternative ways of logging in, refer to the [Azure CLI's official docs](https://learn.microsoft.com/en-us/cli/azure/authenticate-azure-cli)

* After logging in, in case you have multiple azure subscriptions, we need to set the default context by running the command `az account set --subscription <subscriptionName or ID>`
  * To list your subscriptions you can run `az account list -o table` and copy the name or ID of the subscription you want to use.

* We will now create the resource group for the resources we'll be creating by running the command `az group create --name k8s-goat-eastus-rg --location eastus`
  * For this example we've used `eastus` but you can find the list of available regions by running `az account list-locations -o table`

* Now we will create the AKS cluster by running the command below. We're using the default node size and configuration but you can customize it using the available parameters as described at [`az aks` reference](https://learn.microsoft.com/en-us/cli/azure/aks?view=azure-cli-latest#az-aks-create)

```bash
az aks create --resource-group k8s-goat-eastus-rg --name k8s-goat-cluster --enable-managed-identity --node-count 2 --enable-addons monitoring --generate-ssh-keys
```

::info

When you create a new cluster, AKS automatically creates a second resource group to store the AKS managed resources. For more information, see [Why are two resource groups created with AKS?](https://learn.microsoft.com/en-us/azure/aks/faq#why-are-two-resource-groups-created-with-aks)

:::

* Once the cluster is ready, you can update your ~/.kube/config file with the following command:

```bash
az aks get-credentials --resource-group k8s-goat-eastus-rg --name k8s-goat-cluster
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

::caution

Once AKS uses []`containerd` as runtime](https://learn.microsoft.com/en-us/azure/aks/cluster-configuration#container-runtime-configuration) instead of `docker`, not all scenarios may be available as expected. For example, the health check scenario may not work as expected.

:::

* Now we have the Kubernetes Goat setup up and running, refer to [Getting Started for next steps](../getting-started.md)
