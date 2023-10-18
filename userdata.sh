#!/bin/bash
apt-get update -y
apt-get install git -y
apt-get install python3 -y
cd /home/ubuntu/
TOKEN="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"
git clone https://$TOKEN@github.com/strato33/awscapstone.git
cd /home/ubuntu/capstone-private-repo
apt install python3-pip -y
apt-get install python3.10-dev libmysqlclient-dev -y
pip3 install -r requirements.txt
cd /home/ubuntu/capstone-private-repo/src
python3 manage.py collectstatic --noinput
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:80