#!/bin/bash

# Download and unpack and untar WordPress
curl -O https://wordpress.org/latest.tar.gz
gunzip latest.tar.gz
tar -zxvf latest.tar.gz --strip-components=1

# Build the docker containers
docker-compose build
