#! /bin/bash
ssh jenkins@sfia2 bash -c " {
docker stack deploy --compose-file docker-compose.yaml stack
}"
