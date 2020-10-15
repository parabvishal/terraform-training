#!/bin/bash

#Sleep until the instance is ready
until [[ -f /var/lib/cloud/instance/boot-finished ]]; do
    sleep 1
done

#Update Packages
yum update -y

#Install httpd
yum install httpd -y

#Restart httpd service
systemctl restart httpd