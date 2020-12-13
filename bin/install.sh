#!/bin/bash

main_dir="$(dirname $(dirname $(realpath $0)) )"
cd "$main_dir" || exit

# Download and untar WordPress
printf "\nDownloading latest version of WordPress ...\n"

curl -O https://wordpress.org/latest.tar.gz
tar -xzf latest.tar.gz -C server_files/
rm latest.tar.gz
chmod +x bin/*.sh

./bin/start.sh

printf "\nSetup complete. You can now navigate to http://localhost:8080/ in your browser.\n"
printf "\nTo stop the development server run './stop.sh' in this directory.\n"
printf "\nTo start the development server in the future run './start.sh'.\n"
