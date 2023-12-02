#!/bin/bash

# Install Docker
apt install docker.io -y

# Pull the Docker image
docker run -e APPLICATION_KEY=6adfa338-57d0-4112-9476-a1c49ee19828 otohits/app:latest

# Pull the Docker image
docker pull traffmonetizer/cli_v2

# Run the Docker container with the specified settings
docker run -i --name tm traffmonetizer/cli_v2 start accept --token MYRW5FG2ioiBE7IormZYaxTOlSONHNq0slsMoLoWQE8=
