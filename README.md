<p align="center">
  <a href="https://madhuakula.com/kubernetes-goat">
    <img alt="Kubernetes Goat" src="kubernetes-goat-logo.png" width="150" />
  </a>
</p>
<h1 align="center">
  Kubernetes Goat
</h1>
<p align="center">
    ✨ The Kubernetes Goat is designed to be an intentionally vulnerable cluster environment to learn and practice Kubernetes security 🚀
</p>

<p align="center">
    🙌 Refer to <b><a href="https://madhuakula.com/kubernetes-goat">https://madhuakula.com/kubernetes-goat</a></b> for the guide 📖
</p>

<p align="center">
    <a href="https://app.netlify.com/sites/kubernetes-goat/deploys">
        <img alt="Netlify Status" src="https://api.netlify.com/api/v1/badges/e5399be3-9c47-4557-b237-9e6c89f6cada/deploy-status" />
    </a>    
    <a href="https://github.com/madhuakula/kubernetes-goat/blob/master/LICENSE">
        <img alt="License: MIT" src="https://img.shields.io/badge/License-MIT-blue.svg" />
    </a>    
    <a href="https://github.com/madhuakula/kubernetes-goat/releases/latest">
        <img alt="GitHub release" src="https://img.shields.io/github/release/madhuakula/kubernetes-goat.svg" />
    </a>    
    <a href="https://github.com/madhuakula/kubernetes-goat/stargazers">
        <img alt="Github Stars" src="https://img.shields.io/github/stars/madhuakula/kubernetes-goat" />
    </a>    
    <a href="https://github.com/madhuakula/kubernetes-goat/pulls">
        <img alt="PRs Welcome" src="https://img.shields.io/badge/PRs-welcome-brightgreen.svg" />
    </a>    
    <a href="https://hub.docker.com/r/madhuakula/k8s-goat-system-monitor">
        <img alt="Docker Pulls Kubernetes Goat" src="https://img.shields.io/docker/pulls/madhuakula/k8s-goat-system-monitor" />
    </a>    
    <a href="https://twitter.com/intent/tweet/?text=Kubernetes%20Goat,%20an%20intentionally%20vulnerable%20by%20design%20training%20platform%20to%20learn%20%23Kubernetes%20Security%20by%20%40madhuakula.%20Check%20it%20out%20&url=https://github.com/madhuakula/kubernetes-goat">
        <img alt="Twitter" src="https://img.shields.io/twitter/url?url=https://github.com/madhuakula/kubernetes-goat" />
    </a>
    <a href="https://rebrand.ly/Kubernetes-Goat/">
        <img alt="Discord" src="https://img.shields.io/discord/976503864268308580?color=9cf&label=Discord&logo=discord&logoColor=white" />
    </a>
</p>

[![Kubernetes Goat Home](./kubernetes-goat-home.png)](https://madhuakula.com/kubernetes-goat)

## ⚙️ Setting up Kubernetes Goat

* Ensure you have admin access to the Kubernetes cluster and installed `kubectl`. Refer to the [docs for installation](https://kubernetes.io/docs/tasks/tools/install-kubectl/)

* Ensure you have the `helm` package manager installed. Refer to the [docs for installation](https://helm.sh/docs/intro/install)
* To set up the Kubernetes Goat resources in your cluster, run the following commands:

```bash
git clone https://github.com/madhuakula/kubernetes-goat.git
cd kubernetes-goat
chmod +x setup-kubernetes-goat.sh
bash setup-kubernetes-goat.sh
```

* Ensure the pods are running before running the access script

```bash
kubectl get pods
```

![all pods running in kubectl get pods](guide/docs/scenarios/images/kubectl-get-pods.png)

* Access Kubernetes Goat by exposing the resources to the local system (port-forward) by the following command:

```bash
bash access-kubernetes-goat.sh
```

* Then navigate to [`http://127.0.0.1:1234`](http://127.0.0.1:1234)


> Refer to [https://madhuakula.com/kubernetes-goat/docs/how-to-run](https://madhuakula.com/kubernetes-goat/docs/how-to-run) for setting up Kubernetes Goat in various environments like GKE, EKS, AKS, K3S, KIND, etc.


## 🏆 Scenarios

1. Sensitive keys in codebases
2. DIND (docker-in-docker) exploitation
3. SSRF in the Kubernetes (K8S) world
4. Container escape to the host system
5. Docker CIS benchmarks analysis
6. Kubernetes CIS benchmarks analysis
7. Attacking private registry
8. NodePort exposed services
9. Helm v2 tiller to PwN the cluster - [Deprecated]
10. Analyzing crypto miner container
11. Kubernetes namespaces bypass
12. Gaining environment information
13. DoS the Memory/CPU resources
14. Hacker container preview
15. Hidden in layers
16. RBAC least privileges misconfiguration
17. KubeAudit - Audit Kubernetes clusters
18. Falco - Runtime security monitoring & detection
19. Popeye - A Kubernetes cluster sanitizer
20. Secure network boundaries using NSP

## 📖 Documentation Guide

Here is the detailed step by step guide for learning and using Kubernetes Goat 🎉: [documentation guide] (https://madhuakula.com/kubernetes-goat)

[![Kubernetes Goat Documentation Guide](kubernetes-goat-docs.png)](https://madhuakula.com/kubernetes-goat)

**Reference: [https://madhuakula.com/kubernetes-goat](https://madhuakula.com/kubernetes-goat)**

## ⚠️ Disclaimer

> Kubernetes Goat has intentionally created vulnerabilities, applications, and configurations to attack and gain access to your cluster and workloads. Please **DO NOT** run this alongside your production environments and infrastructure. We highly recommend running this in a safe and isolated (contained) environment.

> Kubernetes Goat is used for educational purposes only. Do not test or apply these attacks on any systems without permission. Kubernetes Goat comes with absolutely no warranties, by using it you take full responsibility for all outcomes.

## 📝 License

[MIT](https://github.com/madhuakula/kubernetes-goat/blob/master/LICENSE)

## ✨ Acknowledgements

Thanks to to these wonderful people: 🎉

<table>
    <tr>
        <td align="center"><a href="https://github.com/madhuakula"><img alt="madhuakula"
                    src="https://avatars.githubusercontent.com/u/6764192?v=4" width="100" /><br />madhuakula</a></td>
        <td align="center"><a href="https://github.com/apvarun"><img alt="apvarun"
            src="https://avatars.githubusercontent.com/u/8411309?v=4" width="100" /><br />apvarun</a></td>
        <td align="center"><a href="https://github.com/ant4g0nist"><img alt="ant4g0nist"
                    src="https://avatars.githubusercontent.com/u/3500559?v=4" width="100" /><br />ant4g0nist</a></td>
        <td align="center"><a href="https://github.com/phpsystems"><img alt="phpsystems"
                    src="https://avatars.githubusercontent.com/u/6594322?v=4" width="100" /><br />phpsystems</a></td>
        <td align="center"><a href="https://github.com/adamhurm"><img alt="adamhurm"
                    src="https://avatars.githubusercontent.com/u/13396996?v=4" width="100" /><br />adamhurm</a></td>
        <td align="center"><a href="https://github.com/malwareowl"><img alt="malwareowl"
                    src="https://avatars.githubusercontent.com/u/44069301?v=4" width="100" /><br />malwareowl</a></td>
    </tr>
    <tr>
        <td align="center"><a href="https://github.com/mkcn"><img alt="mkcn"
                    src="https://avatars.githubusercontent.com/u/7307955?v=4" width="100" /><br />mkcn</a></td>
        <td align="center"><a href="https://github.com/0xCardinal"><img alt="0xCardinal"
                    src="https://avatars.githubusercontent.com/u/77858203?v=4" width="100" /><br />0xCardinal</a></td>
        <td align="center"><a href="https://github.com/macagr"><img alt="macagr"
                    src="https://avatars.githubusercontent.com/u/2797772?v=4" width="100" /><br />macagr</a></td>
        <td align="center"><a href="https://github.com/rewanthtammana"><img alt="rewanthtammana"
                    src="https://avatars.githubusercontent.com/u/22347290?v=4" width="100" /><br />rewanthtammana</a>
        </td>
        <td align="center"><a href="https://github.com/avicoder"><img alt="avicoder"
                    src="https://avatars.githubusercontent.com/u/2093260?v=4" width="100" /><br />avicoder</a></td>
        <td align="center"><a href="https://github.com/apps/dependabot"><img alt="dependabot[bot]"
                    src="https://avatars.githubusercontent.com/in/29110?v=4" width="100" /><br />dependabot[bot]</a>
        </td>
    </tr>
    <tr>
        <td align="center"><a href="https://github.com/AmeerAssadi"><img alt="AmeerAssadi"
                    src="https://avatars.githubusercontent.com/u/7712804?v=4" width="100" /><br />AmeerAssadi</a></td>
        <td align="center"><a href="https://github.com/NF997"><img alt="NF997"
                    src="https://avatars.githubusercontent.com/u/23374308?v=4" width="100" /><br />NF997</a></td>
        <td align="center"><a href="https://github.com/smoyer64"><img alt="smoyer64"
                    src="https://avatars.githubusercontent.com/u/328333?v=4" width="100" /><br />smoyer64</a></td>
        <td align="center"><a href="https://github.com/suneshgovind"><img alt="suneshgovind"
                    src="https://avatars.githubusercontent.com/u/7311057?v=4" width="100" /><br />suneshgovind</a></td>
        <td align="center"><a href="https://github.com/wurstbrot"><img alt="wurstbrot"
                    src="https://avatars.githubusercontent.com/u/955192?v=4" width="100" /><br />wurstbrot</a></td>
        <td align="center"><a href="https://github.com/shivankar-madaan"><img alt="shivankar-madaan"
            src="https://avatars.githubusercontent.com/u/23168725?v=4" width="100" /><br />shivankar-madaan</a></td>
    </tr>
    <tr>
        <td align="center"><a href="https://github.com/bzd111"><img alt="bzd111"
                    src="https://avatars.githubusercontent.com/u/18071885?v=4" width="100" /><br />bzd111</a></td>
        <td align="center"><a href="https://github.com/hexachordanu"><img alt="hexachordanu"
                    src="https://avatars.githubusercontent.com/u/19929881?v=4" width="100" /><br />hexachordanu</a></td>
        <td align="center"><a href="https://github.com/podjackel"><img alt="podjackel"
                    src="https://avatars.githubusercontent.com/u/5067183?v=4" width="100" /><br />podjackel</a></td>
        <td align="center"><a href="https://github.com/ravenium"><img alt="ravenium"
                    src="https://avatars.githubusercontent.com/u/670285?v=4" width="100" /><br />ravenium</a></td>
    </tr>
</table>
