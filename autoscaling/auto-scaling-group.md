# Auto Scaling Group

- Name: `HA-WebApp-ASG`
- Minimum: 2
- Desired: 2
- Maximum: 4
- Subnets: `HA-WebApp-Private-AZ1` and `HA-WebApp-Private-AZ2`
- ELB health checks: enabled
- Health check grace period: 300 seconds
- Target group: `HA-WebApp-TG`

The ASG maintains the baseline application capacity across two Availability Zones and replaces instances that fail health checks or are terminated.
