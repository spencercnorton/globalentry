#!/bin/bash
docker compose -f HomeAI/docker-compose.yml --env-file /home/globalentry/Secrets/.env up -d --pull always 