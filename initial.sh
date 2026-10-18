#!/usr/bin/env bash


if [  -f /usr/bin/podman  ]; then
    container_tool="podman"
elif [ -f /usr/bin/docker ]; then
    container_tool="docker"
else
    echo "Neither podman nor docker is installed. Please install one of them to proceed."
    exit 1
fi  

echo "Starting containers..."
$container_tool-compose -f docker-compose.yml up -d
$container_tool-compose -f local-compose.yml up -d

