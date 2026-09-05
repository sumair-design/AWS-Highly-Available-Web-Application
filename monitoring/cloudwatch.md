# CloudWatch Monitoring

CloudWatch is used to observe the EC2 and ALB layers and provide signals for scaling and operational checks.

Recommended metrics for this lab:

- EC2 `CPUUtilization`
- ALB `HealthyHostCount`
- ALB `UnHealthyHostCount`
- ALB `RequestCount`
- ALB `HTTPCode_ELB_5XX_Count`
- ALB `HTTPCode_Target_5XX_Count`

The ASG target-tracking policy uses average CPU utilization. Additional ALB metrics help verify application health and traffic behavior.
