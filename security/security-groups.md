# Security Groups

## `HA-WebApp-ALB-SG`

Inbound:

- HTTP/80 from `0.0.0.0/0`
- HTTPS/443 from `0.0.0.0/0` when TLS is enabled

Outbound: all traffic.

## `HA-WebApp-EC2-SG`

Inbound:

- HTTP/80 from `HA-WebApp-ALB-SG` only

Outbound: all traffic for the lab.

No public SSH rule is required. This keeps the application instances private and makes the ALB the controlled application entry point.
