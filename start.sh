#!/bin/bash

projectName=${PROJECT_NAME:-dns}

docker-compose -p "${projectName}" -f docker-compose.yml pull
docker-compose -p "${projectName}" -f docker-compose.yml -f docker-compose.ports.yml up -d

docker ps
