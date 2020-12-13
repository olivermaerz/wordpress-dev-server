printf "\nStarting MySQL and WordPress docker containers ...\n"

# Update symlinks for plugin and theme folders
./update_themes_and_plugins.sh

# Download the docker images and then start the containers
docker-compose up -d

# Change the permission of the WordPress folder
./fix_permissions_linux.sh
