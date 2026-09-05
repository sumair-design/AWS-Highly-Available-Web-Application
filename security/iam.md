# IAM and Systems Manager

EC2 instances use the IAM role:

`HA-WebApp-EC2-SSM-Role`

Attached managed policy:

`AmazonSSMManagedInstanceCore`

The role is trusted by EC2 and enables Systems Manager Session Manager access without opening inbound SSH port 22.

For production, permissions should be kept to the minimum required for the application and operational tasks.
