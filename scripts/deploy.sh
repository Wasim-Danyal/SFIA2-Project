#! /bin/bash
ssh jenkins@sfia2
cd SFIA2-Project
docker stack deploy --compose-file docker-compose.yaml stack