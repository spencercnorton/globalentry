#!/bin/bash
docker compose -f GameServers/docker-compose.yml --env-file /home/globalentry/Secrets/.env up -d --pull always 