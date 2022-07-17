
# Setting up Kubernets Goat using AWS CDK!

- Create a virtualenv on MacOS and Linux:

```
$ python3 -m venv .venv
```

- Activate your virtualenv for MacOS and Linux.

```
$ source .venv/bin/activate
```

- If you are a Windows platform, you would activate the virtualenv like this:

```
% .venv\Scripts\activate.bat
```

- Once the virtualenv is activated, you can install the required dependencies.

```
$ pip install -r requirements.txt
```

- If your AWS is not bootstrap with CDK, run the following

```
cdk bootstrap
```

- At this point you can now synthesize the CloudFormation template for this code.

```
$ cdk synth
```

- Edit .env file according to your AWS environment

```
account_number = <1234567890>
default_region = <us-region-n>
vpc-id = <vpc-01234abcd> 
instance_type = <t2.large or t2.medium> # t2.micro not recommended 
key_pair_name = <kube-goat> # keypair name without .pem
whitelist_ip = <XX.XX.XX.XX/32> # 0.0.0.0/0 for public access
```

- Now deploy this stack to your default AWS account/region

```
$ cdk deploy
```

- ssh to server

```
ssh -i key_pair_name.pem ubuntu@target_server
```

- Then to access the Kubernetes Goat locally, run the following command

```
sudo cd /kubernetes-goat
sudo bash access-kubernetes-goat.sh
```

- To destroy the setup

```
cdk destroy
```



