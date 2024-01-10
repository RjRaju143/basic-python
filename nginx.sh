#!/bin/bash

sudo cp -rf app.conf /etc/nginx/sites-available/app.conf
# chmod 710 /var/lib/jenkins/workspace/django

sudo ln -s /etc/nginx/sites-available/app.conf /etc/nginx/sites-enabled/

sudo nginx -t

sudo systemctl start nginx
sudo systemctl enable nginx

sudo systemctl status nginx


