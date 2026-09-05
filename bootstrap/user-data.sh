#!/bin/bash
set -e

dnf update -y
dnf install -y nginx

systemctl enable nginx
systemctl start nginx

TOKEN=$(curl -s -X PUT "http://169.254.169.254/latest/api/token" \
  -H "X-aws-ec2-metadata-token-ttl-seconds: 21600")

HOSTNAME=$(curl -s \
  -H "X-aws-ec2-metadata-token: $TOKEN" \
  http://169.254.169.254/latest/meta-data/hostname)

AZ=$(curl -s \
  -H "X-aws-ec2-metadata-token: $TOKEN" \
  http://169.254.169.254/latest/meta-data/placement/availability-zone)

cat > /usr/share/nginx/html/index.html <<EOF
<!DOCTYPE html>
<html lang="en">
<head><meta charset="UTF-8"><title>HA AWS Web Application</title></head>
<body>
<h1>Highly Available AWS Web Application</h1>
<h2>Application Server</h2>
<p><strong>Hostname:</strong> $HOSTNAME</p>
<p><strong>Availability Zone:</strong> $AZ</p>
<hr>
<p>Served by Amazon EC2 behind an Application Load Balancer.</p>
</body>
</html>
EOF
