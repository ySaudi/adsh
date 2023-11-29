#!/bin/bash

mkdir -p "$HOME/.bitping/"

docker run -it --mount type=bind,source="$HOME/.bitping/",target=/root/.bitping bitping/bitping-node:latest

echo "Email: beformine@gmail.com"
