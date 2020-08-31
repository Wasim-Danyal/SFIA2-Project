#! /bin/bash
ssh jenkins@sfia2
hostname
pwd
docker stack deploy --compose-file docker-compose.yaml stack