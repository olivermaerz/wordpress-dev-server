echo ""
echo "Starting MySQL and WordPress docker containers ..."
echo ""

# Download the docker images and then start the containers
docker-compose up -d

# Change the permission of the WordPress folder
./fix_permissions_linux.sh