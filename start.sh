#!/bin/bash

projectName=${PROJECT_NAME:-dns}

UNBOUND_IMAGE=$(cat dependabot-dockerfiles/unbound/Dockerfile | cut -d ' ' -f 2)
export UNBOUND_IMAGE

PIHOLE_IMAGE=$(cat dependabot-dockerfiles/pihole/Dockerfile | cut -d ' ' -f 2)
export PIHOLE_IMAGE

docker-compose -p "${projectName}" -f docker-compose.yml pull
docker-compose -p "${projectName}" -f docker-compose.yml -f docker-compose.ports.yml up -d

docker ps
