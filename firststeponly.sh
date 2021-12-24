#!/bin/bash
# Starting up nginx-proxy 
source .env
docker network create --attachable=true --driver=bridge --subnet=${SUBNET} --gateway=${GATEWAY} ${NETWORK}
ufw allow 80
ufw allow 443
docker-compose up -d
docker-compose logs
