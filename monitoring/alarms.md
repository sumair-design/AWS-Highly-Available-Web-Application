# CloudWatch Alarms

## Unhealthy targets

Alarm name: `HA-WebApp-UnHealthyHostCount`

- Metric: ALB `UnHealthyHostCount`
- Statistic: Maximum
- Period: 1 minute
- Condition: greater than 0

Purpose: detect when at least one backend target is unhealthy.

## High CPU

Alarm name: `HA-WebApp-High-CPU`

- Metric: EC2 `CPUUtilization`
- Statistic: Average
- Period: 5 minutes
- Condition: greater than 70%

Purpose: provide an operational signal when an instance experiences sustained high CPU.
