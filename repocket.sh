#!/bin/bash

# Install Docker
apt install docker.io -y

# Pull the Docker image
docker pull repocket/repocket:latest

# Run the Docker container with the specified settings
docker run --name repocket -e RP_EMAIL=beformine@gmail.com -e RP_API_KEY=d93c5411-5085-4631-8120-50de52c1253a -d --restart=always repocket/repocket
