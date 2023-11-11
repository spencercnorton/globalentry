#!/bin/bash
docker compose -f Streaming/docker-compose.yml --env-file /home/globalentry/Secrets/.env down -v