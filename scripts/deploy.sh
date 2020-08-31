#! /bin/bash
ssh jenkins@sfia2
docker stack deploy --compose-file docker-compose.yaml stack