# Target Group

- Name: `HA-WebApp-TG`
- Target type: Instances
- Protocol: HTTP
- Port: 80
- Health check path: `/`
- Health check protocol: HTTP
- Healthy threshold: 2
- Unhealthy threshold: 2
- Interval: 30 seconds
- Timeout: 5 seconds

The Auto Scaling Group registers its EC2 instances automatically. Targets must report healthy before receiving normal application traffic.
