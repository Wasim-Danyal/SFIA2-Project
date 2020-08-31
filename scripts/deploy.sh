#! /bin/bash
hostname
docker swarm init
docker swarm join-token worker
docker stack deploy --compose-file docker-compose.yaml stack