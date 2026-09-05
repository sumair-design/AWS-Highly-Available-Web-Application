# VPC Design

## VPC

- Name: `HA-WebApp-VPC`
- IPv4 CIDR: `10.0.0.0/16`

## Availability Zones

The application spans two Availability Zones.

## Components

- Internet Gateway: `HA-WebApp-IGW`
- Public subnets host the internet-facing ALB and NAT Gateway.
- Private subnets host the EC2 application servers.

The design separates the public entry layer from the application tier.
