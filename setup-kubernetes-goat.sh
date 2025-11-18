#!/bin/bash
# Author: Madhu Akula
# This program has been created as part of Kubernetes Goat
# Kubernetes Goat setup and manage vulnerable infrastructure

INSECURE=""
KUBECONFIG_ARG=""
export KUBECTL_INSECURE=""
export HELM_INSECURE=""

while [[ $# -gt 0 ]]; do
  case "$1" in
    --insecure)
      INSECURE="yes"
      shift
      ;;
    --kubeconfig)
      KUBECONFIG_ARG="$2"
      shift 2
      ;;
    *)
      echo "unknown arg: $1"
      shift
      ;;
  esac
done

if [[ -n "$KUBECONFIG_ARG" ]]; then
  export KUBECONFIG="$KUBECONFIG_ARG"
fi

if [[ -n "$INSECURE" ]]; then
  export KUBECTL_INSECURE="--insecure-skip-tls-verify"
  export HELM_INSECURE="--kube-insecure-skip-tls-verify"
fi

# Checking kubectl setup
kubectl $KUBECTL_INSECURE version > /dev/null 2>&1
if [ $? -eq 0 ];
then
    echo "kubectl setup looks good."
else 
    echo "Error: Could not find kubectl or an other error happened, please check kubectl setup."
    exit;
fi

# Deprecated helm2 scenario
# Checking helm2 setup
#helm2 --help > /dev/null 2>&1
#if [ $? -eq 0 ];
#then
#    echo "helm2 setup looks good."
#else
#    echo "Error: Could not find helm2, please check helm2 setup."
#    exit;
#fi
#
## helm2 setup
#echo "setting up helm2 rbac account and initialise tiller"
# kubectl apply -f scenarios/helm2-rbac/setup.yaml
#helm2 init --service-account tiller

# wait for tiller service to ready
# echo "waiting for helm2 tiller service to be active."
# sleep 50

# deploying insecure-rbac scenario
echo "deploying insecure super admin scenario"
kubectl $KUBECTL_INSECURE apply -f scenarios/insecure-rbac/setup.yaml

# deploying helm chart to verify the setup
echo "deploying helm chart metadata-db scenario"
helm $HELM_INSECURE install metadata-db scenarios/metadata-db/

# setup the scenarios/configurations
echo 'deploying the vulnerable scenarios manifests'
kubectl $KUBECTL_INSECURE apply -f scenarios/batch-check/job.yaml
kubectl $KUBECTL_INSECURE apply -f scenarios/build-code/deployment.yaml
kubectl $KUBECTL_INSECURE apply -f scenarios/cache-store/deployment.yaml
kubectl $KUBECTL_INSECURE apply -f scenarios/health-check/deployment.yaml
kubectl $KUBECTL_INSECURE apply -f scenarios/hunger-check/deployment.yaml
kubectl $KUBECTL_INSECURE apply -f scenarios/internal-proxy/deployment.yaml
kubectl $KUBECTL_INSECURE apply -f scenarios/kubernetes-goat-home/deployment.yaml
kubectl $KUBECTL_INSECURE apply -f scenarios/poor-registry/deployment.yaml
kubectl $KUBECTL_INSECURE apply -f scenarios/system-monitor/deployment.yaml
kubectl $KUBECTL_INSECURE apply -f scenarios/hidden-in-layers/deployment.yaml

echo 'Successfully deployed Kubernetes Goat. Have fun learning Kubernetes Security!'
echo 'Ensure pods are in running status before running access-kubernetes-goat.sh script'
echo 'Now run the bash access-kubernetes-goat.sh to access the Kubernetes Goat environment.'
