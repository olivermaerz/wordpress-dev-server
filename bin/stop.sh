#!/bin/bash

main_dir="$(dirname $(dirname $(realpath $0)) )"
cd "$main_dir" || exit

printf "\nStopping the MySQL and WordPress containers ... \n"
docker-compose -f server_files/docker-compose.yml stop
