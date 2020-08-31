#! /bin/bash
ssh jenkins@sfia2 << EOF
docker stack deploy --compose-file docker-compose.yaml stack
EOF