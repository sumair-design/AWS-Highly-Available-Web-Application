# Cost Guidance

This is a learning/portfolio deployment. Costs can come from the NAT Gateway, Application Load Balancer, EC2 instances, EBS storage, Route 53 hosted zones, data transfer, and optional ACM-related architecture components.

The lab uses `t3.micro` instances and a single NAT Gateway to reduce cost. The single NAT Gateway is a deliberate lab trade-off and is not fully redundant across AZs.

## Cleanup

When testing is complete, remove resources in dependency order: Route 53 records/hosted zone if no longer needed, ALB, ASG and launch template, NAT Gateway and Elastic IP, other VPC resources, and finally the VPC.

Always verify the AWS Billing/Cost Management console after cleanup.
