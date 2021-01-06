#!/bin/bash
cd "${0%/*}"
# Destroy cluster and delete everyting
bash ../teardown-kubernetes-goat.sh
kind delete clusters kubernetes-goat-cluster