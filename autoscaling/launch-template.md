# Launch Template

Name: `HA-WebApp-Launch-Template`

- AMI: Amazon Linux 2023
- Instance type: `t3.micro`
- Security group: `HA-WebApp-EC2-SG`
- IAM instance profile: `HA-WebApp-EC2-SSM-Role`
- Root volume: gp3, 8 GiB (lab configuration)
- User Data: `bootstrap/user-data.sh`
- No public SSH access is required.

The template provides a repeatable configuration for instances created by the Auto Scaling Group.
