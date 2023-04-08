---
sidebar_position: 2
slug: /why-kubernetes-goat-and-the-motivation
title: 💪 Why - The Motivation
---

# 💪 Why Kubernetes Goat - Motivation

[Madhu Akula](#author) is the creator of Kubernetes Goat. It all started with tinkering with tools and technologies for me. When I find something new or interesting I always try it out first, and sometimes I even end up missing reading the documentation (I know it's a bad habit and I learned my lessons 😉). I come from a security background. My interests are in systems, and infrastructure since the beginning of my career. This comes from when I was doing some vulnerability research and finding security issues in applications, products, and software.

in 2014, I found a simple app sec bug in the Docker website and as always my love for cool tools made me want to try it out. So in 2015, I had given it a try and I was amazed at the problem was solved and looked like magic. 🧙

When I generally try out tools I used to look at things in different ways; 2 of them include how can I find security issues in them or how can I use this for security automation? And a scalable way to solve security problems.

Even though I come from a security background, I am always passionate about systems and infrastructure. Which made want to learn more about how Docker can solve a ton of problems in the world (the popular one being I don’t know why it doesn’t work for you. It works on my machine 😂). I learned more about the non-security side of things like user experience and understood more about use cases, configurations, etc.

Then as usual, my curiosity asked me to poke around with the security issues and misconfigurations while learning. I ended up finding a lot of security misconfigurations, and issues. Then slowly the same thing happened with Kubernetes and its cloud native ecosystem as well. I thought why don't I share my knowledge with the world the same way I learn things (a practical hands-on way) and how the security community learns (by playing with intentionally vulnerable scenarios) so that they can benefit and learn from the common security issues, misconfigurations, real-world hacks.

I also didn't want to focus this only on security people, because when I look back on my early findings, most of the security issues in cloud native environments are misconfigurations. So I thought why not make this useful for everyone like how Red Teams (attackers) can learn how to hack and find security issues by playing with scenarios and understanding how to exploit the misconfigurations. While Blue Teams (defenders) can learn to understand the attacker's thinking and mitigate or detect these attacks, as well as learning to resolve the misconfigurations.

The biggest value I wanted to add to the community was how non-security people like developers, DevOps, architects, and other teams can benefit from deploying properly configured software. I can give a simple example, let's say when we are writing the Kubernetes manifests by the DevOps team or Dockerfile by developers if we can bake security then it's a game-changer. The Red Hat [State of Kubernetes security report](https://www.redhat.com/en/blog/state-kubernetes-security) states that 94% of responders have reported the security incident, and the major cause was due to misconfigurations.

These misconfigurations can be prevented before they even leave their IDE or code editors. I also feel that DevOps teams and developers have more influence and power to push a secure ecosystem as they understand the technology and context way better than security teams. So by teaching these teams how attackers think, and how security misconfigurations are made so that they can resolve them by learning how to apply best practices and using tools and techniques like code linters, tools, documentation from the start.

When I started sharing this with the community, I have seen a lot of security vendors and companies start using this in their sales calls and selling as a way to showcase their product effectiveness. So I thought why not open source projects like these add value to even open-source tools? This means commercial vendors, and companies can validate if they are buying the right product or if their tool detects real-world and common security issues.

I ended up making companies and teams question how they can add value to the products they sell, by using this tool as a way to test their product effectiveness and also to teach their product or tool to customers/end users like an interactive education playground using scenarios.

There is a lot more scope than what I have imagined, and there is lots of potential value on how this project can add value to the whole cloud native ecosystem and communities.

So keep an eye out and spread the word. There are a ton of more cool things on the way, and I would love to hear your feedback, suggestions, questions and inputs. 🙏

## Author

[Madhu Akula](https://madhuakula.com) is a pragmatic security leader and creator of [Kubernetes Goat](https://github.com/madhuakula/kubernetes-goat), an intentionally vulnerable by design Kubernetes Cluster to learn and practice Kubernetes Security. His is also a published author and cloud native security researcher with extensive experience. Madhu is also an active member of the international security, DevOps, and cloud native communities ([null, DevSecOps, AllDayDevOps, AWS, CNCF, USENIX, OWASP, etc](https://madhuakula.com#volunteering)). He also holds industry [certifications](https://madhuakula.com#accomplishments) like OSCP (Offensive Security Certified Professional), CKA (Certified Kubernetes Administrator), etc.

Madhu frequently [speaks and runs training sessions](https://madhuakula.com/event/) at security events and conferences around the world including DEFCON 24, 26, 27, 28, 29 & 30, BlackHat 2018, 19, 21 & 22, USENIX LISA 2018, 19 & 21, SANS Cloud Security Summit 2021 & 2022, O’Reilly Velocity EU 2019, Github Satellite 2020, AppSec EU (2018, 19 & 22), All Day DevOps (2016, 17, 18, 19, 20 & 21), DevSecCon (London, Singapore, Boston), DevOpsDays India, c0c0n(2017, 18), Nullcon 2018, 19, 21 & 22, SACON, Serverless Summit, null and multiple others.

His research has identified vulnerabilities in over 200+ companies and organizations including; Google, Microsoft, LinkedIn, eBay, AT&T, WordPress, NTOP, Adobe, etc. and is credited with multiple [CVEs](https://madhuakula.com/publication/security-vulnerabilities-advisories/), [Acknowledgements](https://madhuakula.com/publication/security-vulnerabilities-acknowledgements/) and rewards. He is co-author of [Security Automation with Ansible2](https://www.secautomationbook.com/) (ISBN-13: 978-1788394512), which is listed as a technical resource by [Red Hat Ansible](https://www.ansible.com/resources/ebooks/security-automation-with-ansible-2). He is the technical reviewer for Learn Kubernetes Security, Practical Ansible2 books by Packt Pub. Also won 1st prize for building Infrastructure Security Monitoring solution at [InMobi flagship hackathon](https://inmobihackdaysummer2015.devpost.com) among 100+ engineering teams.

Specialties include: Cloud Native Infrastructure Security, Containers & Kubernetes Security, Security Research, Engineering, Architecture & Strategy, Product Security, DevSecOps, Cloud Security, Application Security, Leadership, Technology Roadmap, Building Awesome Teams, Communities, and Culture.
