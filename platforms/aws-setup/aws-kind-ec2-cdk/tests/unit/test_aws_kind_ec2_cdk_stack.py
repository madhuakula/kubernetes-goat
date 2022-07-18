import aws_cdk as core
import aws_cdk.assertions as assertions

from aws_kind_ec2_cdk.aws_kind_ec2_cdk_stack import AwsKindEc2CdkStack

# example tests. To run these tests, uncomment this file along with the example
# resource in aws_kind_ec2_cdk/aws_kind_ec2_cdk_stack.py
def test_sqs_queue_created():
    app = core.App()
    stack = AwsKindEc2CdkStack(app, "aws-kind-ec2-cdk")
    template = assertions.Template.from_stack(stack)

#     template.has_resource_properties("AWS::SQS::Queue", {
#         "VisibilityTimeout": 300
#     })
