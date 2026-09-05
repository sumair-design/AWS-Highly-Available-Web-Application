# Routing

## Public route table

`HA-WebApp-Public-RT`

- `10.0.0.0/16` → local
- `0.0.0.0/0` → `HA-WebApp-IGW`
- Associated with both public subnets.

## Private route table

`HA-WebApp-Private-RT`

- `10.0.0.0/16` → local
- `0.0.0.0/0` → `HA-WebApp-NAT-GW`
- Associated with both private subnets.

## Outbound path

Private EC2 → Private Route Table → NAT Gateway → Internet Gateway → Internet.

For stronger production resiliency, use a NAT Gateway in each AZ with AZ-specific private route tables.
