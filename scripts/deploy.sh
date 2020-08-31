#! /bin/bash
ssh user@host bash -c " {
docker stack deploy --compose-file docker-compose.yaml stack
}"
