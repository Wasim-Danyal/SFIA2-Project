#! /bin/bash
hostname
ssh jenkins@sfia2
pwd
hostname

docker swarm join-token worker
docker stack deploy --compose-file docker-compose.yaml stack