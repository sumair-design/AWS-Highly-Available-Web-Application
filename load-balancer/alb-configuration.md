# Application Load Balancer

- Name: `HA-WebApp-ALB`
- Scheme: Internet-facing
- IP address type: IPv4
- Subnets: both public subnets
- Security group: `HA-WebApp-ALB-SG`
- HTTP listener: port 80
- Optional HTTPS listener: port 443 with an ACM certificate

The ALB forwards requests to `HA-WebApp-TG` and provides the public entry point for the private application servers.
