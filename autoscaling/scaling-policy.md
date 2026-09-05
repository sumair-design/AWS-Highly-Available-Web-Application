# Scaling Policy

The ASG uses target tracking based on average EC2 CPU utilization.

- Metric: Average CPU utilization
- Target: 50%
- Minimum capacity: 2
- Maximum capacity: 4
- Scale-in: enabled

Target tracking adjusts desired capacity as load changes while respecting the configured minimum and maximum.
