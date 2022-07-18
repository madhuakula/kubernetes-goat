#!/usr/bin/env python3
import os
from dotenv import load_dotenv
import aws_cdk as cdk
from aws_kind_ec2_cdk.aws_kind_ec2_cdk_stack import AwsKindEc2CdkStack

load_dotenv()

app = cdk.App()
AwsKindEc2CdkStack(app, "AwsKindEc2CdkStack",
    # If you don't specify 'env', this stack will be environment-agnostic.
    # Account/Region-dependent features and context lookups will not work,
    # but a single synthesized template can be deployed anywhere.

    # Uncomment the next line to specialize this stack for the AWS Account
    # and Region that are implied by the current CLI configuration.

    #env=cdk.Environment(account=os.getenv('CDK_DEFAULT_ACCOUNT'), region=os.getenv('CDK_DEFAULT_REGION')),

    # Uncomment the next line if you know exactly what Account and Region you
    # want to deploy the stack to. */

    env=cdk.Environment(account=os.getenv('account_number'), region=os.getenv('default_region'))

    # For more information, see https://docs.aws.amazon.com/cdk/latest/guide/environments.html
    )

app.synth()
