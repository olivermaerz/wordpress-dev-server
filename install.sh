#!/bin/bash

# Download and untar WordPress
printf "\nDownloading latest version of WordPress ...\n"

curl -O https://wordpress.org/latest.tar.gz
tar -xzf latest.tar.gz
rm latest.tar.gz
chmod +x fix_permissions.sh

./start.sh

printf "\nSetup complete. You can now navigate to http://localhost:8080/ in your browser.\n"
printf "\nTo stop the development server run './stop.sh' in this directory.\n"
printf "\nTo start the development server in the future run './start.sh'.\n"
