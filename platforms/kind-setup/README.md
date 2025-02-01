# Setting up Kubernetes Goat using KIND

If you want to set up the Kubernetes Goat using KIND (Kubernetes IN Docker), then follow the below steps

> Make sure you have followed the pre-requisites as mentioned in the Kubernetes Goat. Also, you must have KIND installed and setup locally in your system.

## Bash
- To setup the KIND cluster run the following commands:

```bash
bash setup-kind-cluster-and-goat.sh
```

- Then to access the Kubernetes Goat locally, run the following command

```bash
bash access-kubernetes-goat.sh
```

- To destroy the KIND cluster run the following command

```bash
bash teardown-cluster.sh
```

## Windows

- To setup the KIND cluster run the following commands:

```powershell
.\setup-kind-cluster-and-goat.ps1
```

- Then to access the Kubernetes Goat locally, run the following command

```powershell
.\access-kubernetes-goat.ps1
```

- To destroy the KIND cluster run the following command

```powershell
.\teardown-cluster.ps1
```