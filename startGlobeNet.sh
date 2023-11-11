#!/bin/bash
docker compose -f GlobeNet/docker-compose.yml --env-file /home/globalentry/Secrets/.env up -d --pull always