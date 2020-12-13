#!/bin/bash

echo ""
echo "Updating symlinks for themes and plugins ..."
echo ""

find ./themes/ -maxdepth 1 -mindepth 1 -type d -exec ln -s '{}' ./wordpress/wp-content/themes/ \;
find ./plugins/ -maxdepth 1 -mindepth 1 -type d -exec ln -s '{}' ./wordpress/wp-content/plugins/ \;

