# This file has been created to contribute to the development of the Kubernetes Goat

# Check that kind is installed
try {
    kind version | Out-Null
    Write-Output "Kind is installed, all good"
} catch {
    Write-Output "Please install Kind to use this setup file"
    exit
}

# Check that docker is installed in the host
try {
    docker version --format '{{.Server.Version}}' | Out-Null
    Write-Output "Docker is installed, all good"
} catch {
    Write-Output "Please install Docker to use this setup file"
    exit
}

# Setup cluster using extraMounts to expose the docker socket from the host
kind create cluster --config kind-cluster-setup.yaml --name kubernetes-goat-cluster

# Move to the root dir
cd ../..

# Setup GOAT exposing host Docker socket:
.\setup-kubernetes-goat.ps1
