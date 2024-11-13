# Author: Madhu Akula
# This program has been created as part of Kubernetes Goat
# Kubernetes Goat setup and manage vulnerable infrastructure

# Checking kubectl setup
try {
    kubectl.exe version > $null 2>&1
    Write-Host "kubectl.exe setup looks good."
} catch {
    Write-Host "Error: Could not find kubectl.exe or another error happened, please check kubectl.exe setup."
    exit
}

# Deprecated helm2 scenario
# Checking helm2 setup
#try {
#    helm2 --help > $null 2>&1
#    Write-Host "helm2 setup looks good."
#} catch {
#    Write-Host "Error: Could not find helm2, please check helm2 setup."
#    exit
#}
#
## helm2 setup
#Write-Host "setting up helm2 rbac account and initialise tiller"
#kubectl apply -f scenarios/helm2-rbac/setup.yaml
#helm2 init --service-account tiller
#
## wait for tiller service to ready
#Write-Host "waiting for helm2 tiller service to be active."
#Start-Sleep -Seconds 50

# deploying insecure-rbac scenario
Write-Host "deploying insecure super admin scenario"
kubectl.exe apply -f scenarios/insecure-rbac/setup.yaml

# deploying helm chart to verify the setup
Write-Host "deploying helm chart metadata-db scenario"
helm install metadata-db scenarios/metadata-db/

# setup the scenarios/configurations
Write-Host 'deploying the vulnerable scenarios manifests'
kubectl.exe apply -f scenarios/batch-check/job.yaml
kubectl.exe apply -f scenarios/build-code/deployment.yaml
kubectl.exe apply -f scenarios/cache-store/deployment.yaml
kubectl.exe apply -f scenarios/health-check/deployment.yaml
kubectl.exe apply -f scenarios/hunger-check/deployment.yaml
kubectl.exe apply -f scenarios/internal-proxy/deployment.yaml
kubectl.exe apply -f scenarios/kubernetes-goat-home/deployment.yaml
kubectl.exe apply -f scenarios/poor-registry/deployment.yaml
kubectl.exe apply -f scenarios/system-monitor/deployment.yaml
kubectl.exe apply -f scenarios/hidden-in-layers/deployment.yaml

Write-Host 'Successfully deployed Kubernetes Goat. Have fun learning Kubernetes Security!'
Write-Host 'Ensure pods are in running status before running access-kubernetes-goat.sh script'
Write-Host 'Now run the bash access-kubernetes-goat.sh to access the Kubernetes Goat environment.'