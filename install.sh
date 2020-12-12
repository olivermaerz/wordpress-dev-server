#!/bin/bash

# Download and untar WordPress
curl -O https://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz
rm latest.tar.gz
chmod +x fix_permissions.sh

# Change the permission of the WordPress folder
./fix_permissions.sh

echo ""

# Download the docker images and then start the containers
docker-compose up -d

echo ""
echo "Setup complete. You can now navigate to http://localhost:8080/ in your browser."
echo ""
echo "To stop the development server run 'docker-compose stop' in this directory."
echo ""
echo "To start the development server in the future run 'docker-compose up -d'."
echo ""
