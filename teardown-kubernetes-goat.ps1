# Author: Madhu Akula
# This program has been created as part of Kubernetes Goat
# Teardown Kubernetes Goat setup

# Removing the superadmin cluster role/binding
kubectl.exe delete clusterrolebindings superadmin
kubectl.exe delete serviceaccount -n kube-system superadmin

# Removing the helm-tiller cluster role/binding
kubectl.exe delete clusterrole all-your-base
kubectl.exe delete clusterrolebindings belong-to-us

# Removing metadata db chart
helm delete metadata-db --no-hooks
# helm2 delete pwnchart --purge

# Remove tiller deployment
kubectl.exe delete deployments -n kube-system tiller-deploy

# Delete the scenarios
kubectl.exe delete -f scenarios/batch-check/job.yaml
kubectl.exe delete -f scenarios/build-code/deployment.yaml
kubectl.exe delete -f scenarios/cache-store/deployment.yaml
kubectl.exe delete -f scenarios/health-check/deployment.yaml
kubectl.exe delete -f scenarios/hunger-check/deployment.yaml
kubectl.exe delete -f scenarios/internal-proxy/deployment.yaml
kubectl.exe delete -f scenarios/kubernetes-goat-home/deployment.yaml
kubectl.exe delete -f scenarios/poor-registry/deployment.yaml
kubectl.exe delete -f scenarios/system-monitor/deployment.yaml
kubectl.exe delete -f scenarios/hidden-in-layers/deployment.yaml

Write-Host "The Kubernetes Goat scenarios have been removed. Ensure to clean up what you installed and used. It's better to delete the cluster."