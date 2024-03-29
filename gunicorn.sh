#!/bin/bash

source venv/bin/activate

cd /var/lib/jenkins/workspace/django/app

python3 manage.py makemigrations

python3 manage.py migrate

echo "Migration Done"

cd /var/lib/jenkins/workspace/django

sudo cp -rf gunicorn.socket /etc/systemd/system
sudo cp -rf gunicorn.service /etc/systemd/system

echo $USER
echo $PWD

sudo systemctl daemon-reload

sudo systemctl stop gunicorn.socket
sudo systemctl stop gunicorn.service

sudo systemctl start gunicorn.socket
sudo systemctl start gunicorn.service

sudo systemctl enable gunicorn.socket
sudo systemctl enable gunicorn.service

sudo systemctl restart gunicorn.service
sudo systemctl status gunicorn.service

echo "Gunicorn has been started"


