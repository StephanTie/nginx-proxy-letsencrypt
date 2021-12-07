#!/bin/bash
# Starting up nginx-proxy 
source .env
sudo docker network create --attachable=true --driver=bridge --subnet=172.20.0.0/28 --gateway=172.20.0.1 $NETWORK
sudo ufw allow 80
sudo ufw allow 443
sudo docker-compose up -d
sudo docker-compose logs
