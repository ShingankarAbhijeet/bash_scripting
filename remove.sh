#!/bin/bash
#remove the packages

systemctl stop httpd
yum remove -y httpd
rm -rf /var/www/html/*
rm -rf /tmp/website/*
