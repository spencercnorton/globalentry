#!/bin/bash
docker compose -f HomeAI/docker-compose.yml --env-file /mnt/4tb/Secrets/.env up -d --pull always 