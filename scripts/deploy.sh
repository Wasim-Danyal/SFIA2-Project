#! /bin/bash
docker stack deploy --compose-file docker-compose.yaml stack
docker compose logs
docker logs