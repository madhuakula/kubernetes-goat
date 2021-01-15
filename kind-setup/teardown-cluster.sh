#!/bin/bash
# Author: Mauricio Cano
# This file has been created to contribute to the development of the Kubernetes GOAT

cd "${0%/*}"
# Destroy cluster and delete everyting
bash ../teardown-kubernetes-goat.sh
kind delete cluster --name kubernetes-goat-cluster
