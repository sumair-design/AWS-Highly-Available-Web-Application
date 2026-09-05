# Deployment Guide

This project was built through the AWS Console.

## Order

1. Create the VPC and four subnets across two Availability Zones.
2. Attach the Internet Gateway.
3. Create public and private route tables.
4. Create the NAT Gateway in a public subnet.
5. Associate the private subnets with the private route table.
6. Create the ALB and EC2 security groups.
7. Create the EC2 IAM role with `AmazonSSMManagedInstanceCore`.
8. Create the launch template using Amazon Linux 2023, `t3.micro`, the EC2 security group, IAM instance profile, and `bootstrap/user-data.sh`.
9. Create the target group with HTTP/80 and `/` health checks.
10. Create the ASG with min 2, desired 2, max 4 across the private subnets.
11. Attach the target group and enable ELB health checks.
12. Add target-tracking CPU scaling at approximately 50%.
13. Create CloudWatch alarms.
14. Create Route 53 DNS and ACM HTTPS if a domain is available.
15. Run the HA and scaling tests.
