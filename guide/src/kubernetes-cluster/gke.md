# Google Kubernetes Engine(GKE) Setup

* Navigate to your Google cloud console [https://console.cloud.google.com](https://console.cloud.google.com/)

* Choose the project you want to set up the Kubernetes Cluster in Google Cloud

* Then open the Google Cloud Shell. Click on the top right terminal icon

![](images/gke-cloudshell.jpg)

## Creating new GKE cluster

```bash
# Importing required environment variables
export KUBERNETESGOATCLUSTERNAME="kubernetes-goat"
export KUBERNETESGOATREGION="us-central1"
export KUBERNETESGOATCLUSTERVERSION="1.16.8-gke.15"
export KUBERNETESGOATPROJECTNAME="<YOUR GOOGLE PROJECT ID>"

# Setup the GKE cluster
gcloud beta container --project "$KUBERNETESGOATPROJECTNAME" clusters create "$KUBERNETESGOATCLUSTERNAME" --zone "$KUBERNETESGOATREGION-a" --no-enable-basic-auth --cluster-version "$KUBERNETESGOATCLUSTERVERSION" --machine-type "n1-standard-1" --image-type "UBUNTU" --disk-type "pd-standard" --disk-size "50" --metadata disable-legacy-endpoints=true,GOAT_KEY="azhzLWdvYXQtNmJlNGRkMWI3ZmE4NGUzNzA0ODllZGQ2NDA0MWQ2MTk=" --scopes "https://www.googleapis.com/auth/devstorage.read_only","https://www.googleapis.com/auth/logging.write","https://www.googleapis.com/auth/monitoring","https://www.googleapis.com/auth/servicecontrol","https://www.googleapis.com/auth/service.management.readonly","https://www.googleapis.com/auth/trace.append" --preemptible --num-nodes "2" --enable-stackdriver-kubernetes --enable-ip-alias --network "projects/$KUBERNETESGOATPROJECTNAME/global/networks/default" --subnetwork "projects/$KUBERNETESGOATPROJECTNAME/regions/$KUBERNETESGOATREGION/subnetworks/default" --default-max-pods-per-node "110" --enable-autoscaling --min-nodes "1" --max-nodes "5" --no-enable-master-authorized-networks --addons HorizontalPodAutoscaling,HttpLoadBalancing --no-enable-autoupgrade --no-enable-autorepair --maintenance-window "03:00"

# Get the GKE cluster credentials to Google Cloud Shell
gcloud container clusters get-credentials $KUBERNETESGOATCLUSTERNAME --zone $KUBERNETESGOATREGION-a --project $KUBERNETESGOATPROJECTNAME
```

* Check the Kubernetes cluster access by running `kubectl version --short`

![](images/kubectl-version-check.jpg)

## Miscellaneous

* When you start the new project or creating Kubernetes cluster first time in GKE, it might take a while to enable the API. So you might see below error/message information.

> Kubernetes Engine API is being enabled. This may take a minute or more. Learn more
