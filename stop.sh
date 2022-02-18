#!/bin/bash

projectName=${PROJECT_NAME:-dns}

docker-compose -p "${projectName}" down
