# Route 53 DNS

If a domain is available, create a public hosted zone and an `A` record using an **Alias** target pointing to `HA-WebApp-ALB`.

Example flow:

`example.com → Route 53 A/ALIAS → Application Load Balancer`

If the domain is registered outside Route 53, update the registrar's nameservers to the Route 53 hosted-zone nameservers.

Route 53 is optional for testing; the ALB DNS name can be used directly.
