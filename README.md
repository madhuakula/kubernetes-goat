# Kubernetes Goat

[![Netlify Status](https://api.netlify.com/api/v1/badges/e5399be3-9c47-4557-b237-9e6c89f6cada/deploy-status)](https://app.netlify.com/sites/kubernetes-goat/deploys)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://github.com/madhuakula/kubernetes-goat/blob/master/LICENSE)
[![GitHub release](https://img.shields.io/github/release/madhuakula/kubernetes-goat.svg)](https://github.com/madhuakula/kubernetes-goat/releases/latest)
[![Github Stars](https://img.shields.io/github/stars/madhuakula/kubernetes-goat)](https://github.com/madhuakula/kubernetes-goat/stargazers)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](https://github.com/madhuakula/kubernetes-goat/pulls)
[![Docker Pulls Kubernetes Goat](https://img.shields.io/docker/pulls/madhuakula/k8s-goat-home?logo=docker)](https://hub.docker.com/r/madhuakula/k8s-goat-home)
[![Twitter](https://img.shields.io/twitter/url?url=https://github.com/madhuakula/kubernetes-goat)](https://twitter.com/intent/tweet/?text=Kubernetes%20Goat,%20an%20intentionally%20vulnerable%20by%20design%20training%20platform%20to%20learn%20%23Kubernetes%20Security%20by%20%40madhuakula.%20Check%20it%20out%20&url=https://github.com/madhuakula/kubernetes-goat)

The Kubernetes Goat is designed to be an intentionally vulnerable cluster environment to learn and practice Kubernetes security.

**Refer to [https://madhuakula.com/kubernetes-goat](https://madhuakula.com/kubernetes-goat) for the guide.**

[![Kubernetes Goat Home](./kubernetes-goat-home.png)](https://madhuakula.com/kubernetes-goat)

## 📅 Upcoming Training's and Sessions

**Black Hat USA 2021**

["A Practical Approach to Breaking & Pwning Kubernetes Clusters"](https://rebrand.ly/bhusa21) is a commercial training with completely hands-on approach by [Madhu Akula](https://madhuakula.com) at upcoming [Black Hat USA 2021](https://rebrand.ly/bhusa21) to learn more about Kubernets Security.

[![Black Hat USA 2021 Training](./images/madhuakula-blackhat-usa-2021-kubernetes-security.png)](https://rebrand.ly/bhusa21)

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

* Set up the helm version 2 in your path as `helm2`. Refer to helm [releases](https://github.com/helm/helm/releases) for more information about setup

```bash
helm2 --help
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

1. Sensitive keys in code-bases
2. DIND (docker-in-docker) exploitation
3. SSRF in K8S world
4. Container escape to access host system
5. Docker CIS Benchmarks analysis
6. Kubernetes CIS Benchmarks analysis
7. Attacking private registry
8. NodePort exposed services
9. Helm v2 tiller to PwN the cluster
10. Analysing crypto miner container
11. Kubernetes Namespaces bypass
12. Gaining environment information
13. DoS the memory/CPU resources
14. Hacker Container preview
15. Hidden in layers
16. RBAC Least Privileges Misconfiguration
17. KubeAudit - Audit Kubernetes Clusters
18. Sysdig Falco - Runtime Security Monitoring & Detection
19. Popeye - A Kubernetes Cluster Sanitizer
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

## License

[MIT](https://github.com/madhuakula/kubernetes-goat/blob/master/LICENSE)

## ✨ Acknowledgements

Thanks goes to these wonderful people 🎉

<table><tr><td align="center"><a href="https://github.com/madhuakula"><img alt="madhuakula" src="https://avatars.githubusercontent.com/u/6764192?v=4" width="100" /><br />madhuakula</a></td><td align="center"><a href="https://github.com/macagr"><img alt="macagr" src="https://avatars.githubusercontent.com/u/2797772?v=4" width="100" /><br />macagr</a></td><td align="center"><a href="https://github.com/rewanthtammana"><img alt="rewanthtammana" src="https://avatars.githubusercontent.com/u/22347290?v=4" width="100" /><br />rewanthtammana</a></td><td align="center"><a href="https://github.com/mkcn"><img alt="mkcn" src="https://avatars.githubusercontent.com/u/7307955?v=4" width="100" /><br />mkcn</a></td><td align="center"><a href="https://github.com/NF997"><img alt="NF997" src="https://avatars.githubusercontent.com/u/23374308?v=4" width="100" /><br />NF997</a></td><td align="center"><a href="https://github.com/smoyer64"><img alt="smoyer64" src="https://avatars.githubusercontent.com/u/328333?v=4" width="100" /><br />smoyer64</a></td></tr><tr><td align="center"><a href="https://github.com/wurstbrot"><img alt="wurstbrot" src="https://avatars.githubusercontent.com/u/955192?v=4" width="100" /><br />wurstbrot</a></td><td align="center"><a href="https://github.com/podjackel"><img alt="podjackel" src="https://avatars.githubusercontent.com/u/5067183?v=4" width="100" /><br />podjackel</a></td></tr></table>
