#!/bin/bash
sudo apt-get update
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
apt-cache policy docker-ce
sudo apt-get install -y docker-ce
apt-get install nginx
apt-get install docker-compose