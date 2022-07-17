import os
from constructs import Construct
from dotenv import load_dotenv
from aws_cdk import (
    # Duration,
    Stack,
    aws_ec2,
    Fn
)

dirname = os.path.dirname(__file__)
with open("./user_data.sh") as f:
    user_data = f.read()

load_dotenv()

class AwsKindEc2CdkStack(Stack):

    def __init__(self, scope: Construct, construct_id: str, **kwargs) -> None:
        super().__init__(scope, construct_id, **kwargs)

        # The code that defines your stack goes here

        self.instance_name = 'kubernetes-goat'
        self.instance_type = os.getenv('instance_type')
        self.ami_name = 'ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-20210928'
        self.vpc_name = os.getenv('vpc-id')
        self.key_pair_name = os.getenv('key_pair_name')
        self.whitelist_ip = os.getenv('whitelist_ip')

        print(f'Looking up AMI: {self.ami_name}')
        ami_image = aws_ec2.MachineImage().lookup(name=self.ami_name)
        if not ami_image:
            print('Failed finding AMI image')
            return

        print(f'Looking up instance type: {self.instance_type}')
        instance_type = aws_ec2.InstanceType(self.instance_type)
        if not instance_type:
            print('Failed finding instance')
            return

        print(f'Using VPC: {self.vpc_name}')
        vpc = aws_ec2.Vpc.from_lookup(self, 'vpc', vpc_id=self.vpc_name)
        if not vpc:
            print('Failed finding VPC')
            return

        print('Creating security group')
        sec_grp = aws_ec2.SecurityGroup(self, 'ec2-sec-grp', vpc=vpc, allow_all_outbound=True)
        if not sec_grp:
            print('Failed finding security group')
            return

        print('Creating inbound firewall rule')
        sec_grp.add_ingress_rule(
            peer=aws_ec2.Peer.ipv4(self.whitelist_ip),
            description='inbound SSH',
            connection=aws_ec2.Port.tcp(22))

        sec_grp.add_ingress_rule(
            peer=aws_ec2.Peer.ipv4(self.whitelist_ip),
            description='inbound HTTP',
            connection=aws_ec2.Port.tcp(1230))

        sec_grp.add_ingress_rule(
            peer=aws_ec2.Peer.ipv4(self.whitelist_ip),
            description='inbound HTTP',
            connection=aws_ec2.Port.tcp(1231))

        sec_grp.add_ingress_rule(
            peer=aws_ec2.Peer.ipv4(self.whitelist_ip),
            description='inbound HTTP',
            connection=aws_ec2.Port.tcp(1232))

        sec_grp.add_ingress_rule(
            peer=aws_ec2.Peer.ipv4(self.whitelist_ip),
            description='inbound HTTP',
            connection=aws_ec2.Port.tcp(1233))

        sec_grp.add_ingress_rule(
            peer=aws_ec2.Peer.ipv4(self.whitelist_ip),
            description='inbound HTTP',
            connection=aws_ec2.Port.tcp(1234))

        sec_grp.add_ingress_rule(
            peer=aws_ec2.Peer.ipv4(self.whitelist_ip),
            description='inbound HTTP',
            connection=aws_ec2.Port.tcp(1235))

        if not sec_grp:
            print('Failed creating security group')
            return

        print(f'Creating EC2 Instance: {self.instance_name} using {self.instance_type} with ami: {self.ami_name}')
        ec2_inst = aws_ec2.Instance(
            self, 'ec2_inst',
            instance_name=self.instance_name,
            instance_type=instance_type,
            machine_image=ami_image,
            vpc=vpc,
            security_group=sec_grp,
            key_name=self.key_pair_name,
            user_data=aws_ec2.UserData.custom(user_data)
        )
        if not ec2_inst:
            print('Failed creating ec2 instance')
            return
