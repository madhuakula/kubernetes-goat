<p align="center">
  <a href="https://madhuakula.com/kubernetes-goat">
    <img alt="Kubernetes Goat" src="kubernetes-goat-logo.png" width="150" />
  </a>
</p>
<h1 align="center">
  Kubernetes Goat
</h1>
<p align="center">
    ✨ The Kubernetes Goat is designed to be an intentionally vulnerable cluster environment to learn and practice Kubernetes security.
</p>

<p align="center">
    🙌 Refer to <a href="https://madhuakula.com/kubernetes-goat">https://madhuakula.com/kubernetes-goat</a> for the guide 📖
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
</p>

[![Kubernetes Goat Home](./kubernetes-goat-home.png)](https://madhuakula.com/kubernetes-goat)

## Recent Kubernetes Goat Presentations

**OWASP Bay Area Meetup**

[![Introducing Kubernetes Goat - OWASP Bay Area Meetup](https://img.youtube.com/vi/DQllxpb46Yw/0.jpg)](https://youtu.be/DQllxpb46Yw)

**DEFCON Red Team Village**

[![Kubernetes Goat - DEFCON Red Team Village](https://img.youtube.com/vi/aEaSZJRbnTo/0.jpg)](https://youtu.be/aEaSZJRbnTo)

## 🎲 Just click and Play in the browser for free using Katacoda Playground - [Try now]((https://katacoda.com/madhuakula/scenarios/kubernetes-goat))

[![Katacoda Playground Kubernetes Goat](./kubernetes-goat-katacoda.png)](https://katacoda.com/madhuakula/scenarios/kubernetes-goat)

[https://katacoda.com/madhuakula/scenarios/kubernetes-goat](https://katacoda.com/madhuakula/scenarios/kubernetes-goat)

## ⚙️ Setting up Kubernetes Goat

* Before we set up the Kubernetes Goat, ensure that you have created and have admin access to the Kubernetes cluster

```bash
kubectl version --short
```

* Set up the helm version 3 in your path as `helm`. Refer to helm [releases](https://github.com/helm/helm/releases) for more information about setup

```bash
helm version --short
```

* Then finally setup Kubernetes Goat by running the following command

```bash
git clone https://github.com/madhuakula/kubernetes-goat.git
cd kubernetes-goat
bash setup-kubernetes-goat.sh
```

* To export the ports/services locally to start learning, run the following command

```bash
bash access-kubernetes-goat.sh
```

* Then navigate to [http://127.0.0.1:1234](http://127.0.0.1:1234)

### Kubernetes Goat - KIND setup

* If you want to setup Kubernetes Goat using KIND, refer to [kind-setup](kind-setup/README.md)

## 🏁 Scenarios

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

## ❤️ Showcase

* Presented at OWASP Bay Area Meetup at [https://youtu.be/DQllxpb46Yw](https://youtu.be/DQllxpb46Yw)
* Presented at DEF CON RED Team Village [https://youtu.be/aEaSZJRbnTo](https://youtu.be/aEaSZJRbnTo)
* Presented at OWASP San Diego at [https://www.meetup.com/Open-Web-Application-Security-Project-San-Diego-OWASP-SD/events/hmbbkrybckbvb/](https://www.meetup.com/Open-Web-Application-Security-Project-San-Diego-OWASP-SD/events/hmbbkrybckbvb/)
* Featured in the official Kubernetes Podcast at [https://kubernetespodcast.com/episode/109-kubermatic](https://kubernetespodcast.com/episode/109-kubermatic/)
* Featured in tl;dr sec [https://tldrsec.com/blog/tldr-sec-039](https://tldrsec.com/blog/tldr-sec-039/)
* Featured in CloudSecList [https://cloudseclist.com/issues/issue-42](https://cloudseclist.com/issues/issue-42/)
* Presented at EkoParty 2020 DevSecOps [https://youtu.be/XqwbVU-gtng](https://youtu.be/XqwbVU-gtng)
* Presented at c0c0cn 2020 [https://india.c0c0n.org/2020/speakers#madhu_akula](https://india.c0c0n.org/2020/speakers#madhu_akula)
* Featured in Info Ck YouTube channel [https://youtu.be/5ojho4L6Xfo](https://youtu.be/5ojho4L6Xfo)
* Presented in Cloud Native Indonesia Meetup [https://youtu.be/pf5jOGWoWU0](https://youtu.be/pf5jOGWoWU0)
* Presented in [USENIX LISA 2021 Closing Note](https://www.usenix.org/conference/lisa21/presentation/closing)
* Presented in SANS CloudSecNext Summit 2021

## ⚠️ Disclaimer

> Kubernetes Goat creates intentionally vulnerable resources into your cluster. DO NOT deploy Kubernetes Goat in a production environment or alongside any sensitive cluster resources.

> Kubernetes Goat comes with absolutely no warranties whatsoever. By using Kubernetes Goat, you take full responsibility for all outcomes that result.

## Show us some ❤️

Please feel free to send us a [PR](https://github.com/madhuakula/kubernetes-goat/blob/master/guide/src/getting-involved/i-use-this-project.md) and show some ❤️

[![I use this project](images/i-use-this-project.png)](https://github.com/madhuakula/kubernetes-goat/blob/master/guide/src/getting-involved/i-use-this-project.md)

## License

[MIT](https://github.com/madhuakula/kubernetes-goat/blob/master/LICENSE)

## ✨ Acknowledgements

Thanks goes to these wonderful people 🎉

<table><tr><td align="center"><a href="https://github.com/madhuakula"><img alt="madhuakula" src="https://avatars.githubusercontent.com/u/6764192?v=4" width="100" /><br />madhuakula</a></td><td align="center"><a href="https://github.com/mkcn"><img alt="mkcn" src="https://avatars.githubusercontent.com/u/7307955?v=4" width="100" /><br />mkcn</a></td><td align="center"><a href="https://github.com/macagr"><img alt="macagr" src="https://avatars.githubusercontent.com/u/2797772?v=4" width="100" /><br />macagr</a></td><td align="center"><a href="https://github.com/rewanthtammana"><img alt="rewanthtammana" src="https://avatars.githubusercontent.com/u/22347290?v=4" width="100" /><br />rewanthtammana</a></td><td align="center"><a href="https://github.com/avicoder"><img alt="avicoder" src="https://avatars.githubusercontent.com/u/2093260?v=4" width="100" /><br />avicoder</a></td><td align="center"><a href="https://github.com/NF997"><img alt="NF997" src="https://avatars.githubusercontent.com/u/23374308?v=4" width="100" /><br />NF997</a></td></tr><tr><td align="center"><a href="https://github.com/smoyer64"><img alt="smoyer64" src="https://avatars.githubusercontent.com/u/328333?v=4" width="100" /><br />smoyer64</a></td><td align="center"><a href="https://github.com/wurstbrot"><img alt="wurstbrot" src="https://avatars.githubusercontent.com/u/955192?v=4" width="100" /><br />wurstbrot</a></td><td align="center"><a href="https://github.com/podjackel"><img alt="podjackel" src="https://avatars.githubusercontent.com/u/5067183?v=4" width="100" /><br />podjackel</a></td><td align="center"><a href="https://github.com/ant4g0nist"><img alt="ant4g0nist" src="https://avatars.githubusercontent.com/u/3500559?v=4" width="100" /><br />ant4g0nist</a></td></tr></table>
