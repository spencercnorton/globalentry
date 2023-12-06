#!/bin/bash
docker compose -f HomeAI/docker-compose.yml --env-file /mnt/e/Titan/Secrets/.env up -d --pull always 