# Troubleshooting

## Targets are unhealthy

Check that Nginx is running, the target serves `/` on port 80, the EC2 security group allows port 80 from `HA-WebApp-ALB-SG`, and the instances have finished User Data initialization.

## SSM instance is not available

Verify the EC2 IAM instance profile uses `AmazonSSMManagedInstanceCore`, the SSM Agent is running, and the private subnet has outbound connectivity through the NAT Gateway.

## ASG does not launch instances

Check the launch template version, private subnet selection, security group, instance limits, and ASG Activity history.

## ALB is unreachable

Check that the ALB is active, is deployed across both public subnets, has an Internet-facing scheme, and its security group allows HTTP/80 (and HTTPS/443 when configured).

## DNS does not resolve

Verify the Route 53 hosted zone and A/ALIAS record. If the domain is external, verify the registrar nameservers point to Route 53.
