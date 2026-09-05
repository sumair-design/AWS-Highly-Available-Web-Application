# High Availability Tests

## 1. Target health

Open EC2 → Target Groups → `HA-WebApp-TG` → Targets. Confirm the two initial ASG instances report **Healthy**.

## 2. Load balancing

Open the ALB DNS name (or Route 53 domain). Refresh the page repeatedly and observe the hostname and Availability Zone displayed by the backend.

## 3. Instance failure and recovery

1. Identify one instance managed by `HA-WebApp-ASG`.
2. Terminate only that instance.
3. Open the ASG Activity history.
4. Confirm the ASG launches a replacement.
5. Confirm the replacement registers with the target group.
6. Confirm the replacement becomes healthy.
7. Confirm desired capacity returns to 2.
8. Verify the application remains reachable through the ALB.

## 4. Scaling

Use Systems Manager Session Manager to access a test instance. For a temporary lab test, install `stress-ng` and run a bounded CPU workload such as:

```bash
sudo dnf install -y stress-ng
stress-ng --cpu 2 --timeout 5m
```

Observe EC2 CPUUtilization, ASG activity, and desired capacity. Stop the workload after the test.

## 5. Evidence

Capture screenshots of healthy targets, ASG activity/replacement, CloudWatch metrics, and the working application. Redact account IDs, instance IDs, ARNs, public IPs, and other sensitive identifiers before publishing.
