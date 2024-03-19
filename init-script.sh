#!/bin/bash

apt-get update

apt-get install nginx -y

echo "Version 3 on $(hostname)" > /var/www/html/index.html