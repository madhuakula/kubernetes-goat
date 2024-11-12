# Author: Madhu Akula
# This program has been created as part of Kubernetes Goat
# Kubernetes Goat Access vulnerable infrastructure

# Checking kubectl.exe setup
try {
    kubectl.exe version > $null 2>&1
    Write-Host "kubectl.exe setup looks good."
} catch {
    Write-Host "Please check kubectl.exe setup."
    exit
}


Write-Host 'Creating port forward for all the Kubernetes Goat resources to locally. We will be using 1230 to 1236 ports locally!'

# Exposing Sensitive keys in code bases Scenario
$POD_NAME = kubectl.exe get pods --namespace default -l "app=build-code" -o jsonpath="{.items[0].metadata.name}"
Start-Process -NoNewWindow -FilePath "C:\Program Files\Docker\Docker\resources\bin\kubectl.exe" -ArgumentList "port-forward $POD_NAME --address 0.0.0.0 1230:3000" -RedirectStandardError "C:\NUL" -RedirectStandardOutput ".\NUL"

# Exposing DIND (docker-in-docker) exploitation Scenario
$POD_NAME = kubectl.exe get pods --namespace default -l "app=health-check" -o jsonpath="{.items[0].metadata.name}"
Start-Process -NoNewWindow -FilePath "C:\Program Files\Docker\Docker\resources\bin\kubectl.exe" -ArgumentList "port-forward $POD_NAME --address 0.0.0.0 1231:80" -RedirectStandardError "C:\NUL" -RedirectStandardOutput ".\NUL"

# Exposing SSRF in K8S world Scenario
$POD_NAME = kubectl.exe get pods --namespace default -l "app=internal-proxy" -o jsonpath="{.items[0].metadata.name}"
Start-Process -NoNewWindow -FilePath "C:\Program Files\Docker\Docker\resources\bin\kubectl.exe" -ArgumentList "port-forward $POD_NAME --address 0.0.0.0 1232:3000" -RedirectStandardError "C:\NUL" -RedirectStandardOutput ".\NUL"

# Exposing Container escape to access host system Scenario
$POD_NAME = kubectl.exe get pods --namespace default -l "app=system-monitor" -o jsonpath="{.items[0].metadata.name}"
Start-Process -NoNewWindow -FilePath "C:\Program Files\Docker\Docker\resources\bin\kubectl.exe" -ArgumentList "port-forward $POD_NAME --address 0.0.0.0 1233:8080" -RedirectStandardError "C:\NUL" -RedirectStandardOutput ".\NUL"

# Exposing Kubernetes Goat Home
$POD_NAME = kubectl.exe get pods --namespace default -l "app=kubernetes-goat-home" -o jsonpath="{.items[0].metadata.name}"
Start-Process -NoNewWindow -FilePath "C:\Program Files\Docker\Docker\resources\bin\kubectl.exe" -ArgumentList "port-forward $POD_NAME --address 0.0.0.0 1234:80" -RedirectStandardError "C:\NUL" -RedirectStandardOutput ".\NUL"

# Exposing Attacking private registry Scenario
$POD_NAME = kubectl.exe get pods --namespace default -l "app=poor-registry" -o jsonpath="{.items[0].metadata.name}"
Start-Process -NoNewWindow -FilePath "C:\Program Files\Docker\Docker\resources\bin\kubectl.exe" -ArgumentList "port-forward $POD_NAME --address 0.0.0.0 1235:5000" -RedirectStandardError "C:\NUL" -RedirectStandardOutput ".\NUL"

# Exposing DoS resources Scenario
$POD_NAME = kubectl.exe get pods --namespace big-monolith -l "app=hunger-check" -o jsonpath="{.items[0].metadata.name}"
Start-Process -NoNewWindow -FilePath "C:\Program Files\Docker\Docker\resources\bin\kubectl.exe" -ArgumentList "--namespace big-monolith port-forward $POD_NAME --address 0.0.0.0 1236:8080" -RedirectStandardError "C:\NUL" -RedirectStandardOutput ".\NUL"

Write-Host "Visit http://127.0.0.1:1234 to get started with your Kubernetes Goat hacking!"