#!/bin/bash

printf "\nUpdating symlinks for themes and plugins ...\n"

find themes plugins -maxdepth 1 -mindepth 1 -type d -exec ln -sfn '/var/www/html/{}' ./wordpress/wp-content/themes/ \;
find "plugins" -maxdepth 1 -mindepth 1 -type d -exec ln -sfn '/var/www/html/{}' ./wordpress/wp-content/plugins/ \;
