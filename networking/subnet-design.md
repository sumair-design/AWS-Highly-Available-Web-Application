# Subnet Design

| Subnet | CIDR | Tier |
|---|---|---|
| HA-WebApp-Public-AZ1 | `10.0.1.0/24` | Public |
| HA-WebApp-Public-AZ2 | `10.0.2.0/24` | Public |
| HA-WebApp-Private-AZ1 | `10.0.11.0/24` | Private |
| HA-WebApp-Private-AZ2 | `10.0.12.0/24` | Private |

Public subnets are used by the internet-facing ALB and NAT Gateway. EC2 application servers are launched only in the two private subnets.
