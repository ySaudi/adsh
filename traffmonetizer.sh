#!/bin/bash

# Install Docker
apt install docker.io -y

# Pull the Docker image
docker pull traffmonetizer/cli_v2

# Run the Docker container with the specified settings
docker run -i --name tm traffmonetizer/cli_v2 start accept --token MYRW5FG2ioiBE7IormZYaxTOlSONHNq0slsMoLoWQE8=
