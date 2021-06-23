#!/bin/bash
yum install httpd -y
echo "Welcome CMM Terraform Demo" >/var/www/html/index.html
yum update -y
service httpd start
