printf "\nStarting MySQL and WordPress docker containers ...\n"

main_dir="$(dirname $(dirname $(realpath "$0")) )"
cd "$main_dir" || exit

# Update symlinks for plugin and theme folders
./bin/update_themes_and_plugins.sh

# Download the docker images and then start the containers
docker-compose -f server_files/docker-compose.yml up -d

# Change the permission of the WordPress folder
./bin/fix_permissions_linux.sh
