# 🛑 Teardown Kubernetes Goat

You can simply run the following command to tear down the entire Kubernetes Goat infrastructure. Make sure you run this command from the `kubernetes-goat` directory


```bash
bash teardown-kubernetes-goat.sh
```

* If you have set up the KIND cluster, then you can use the following command to destroy the cluster. Make sure you run this command from the `kubernetes-goat/kind` directory

```bash
bash teardown-cluster.sh
```

:::note

Ensure to clean up what you installed and used, and it's better to delete the cluster if not required.

:::
