#!/bin/bash

main_dir="$(dirname $(dirname $(realpath $0)))"
cd "$main_dir" || exit

printf "\nUpdating symlinks for themes and plugins ...\n\n"

find themes -maxdepth 1 -mindepth 1 -type d -exec ln -sfn '/var/www/html/{}' ./server_files/wordpress/wp-content/themes/ \;
find plugins -maxdepth 1 -mindepth 1 -type d -exec ln -sfn '/var/www/html/{}' ./server_files/wordpress/wp-content/plugins/ \;
