# A Docker based WordPress Development Server

This is a Docker based dev server for WordPress projects. The installation script will download the latest version of
WordPress and then build a docker container for Apache running WordPress and another container running MySQL 5.7.

Once the setup is complete you will be able to access the dev server at http://localhost:8080

Please make sure you have Docker installed and running on your computer 
([Docker Installation Instructions](https://docs.docker.com/engine/install/)) and then run  `./bin/install.sh` script.

To stop the development server run: `./bin/stop`

To restart the development server run: `./bin/start`

Place the themes you are developing into the `themes` folder, and the plugins you are developing into the `plugins` 
folder. After adding new plugins or themes run `./bin/update_themes_and_plugins.sh` so the symlinks get update (symlinks 
get also automatically updated when running `./bin/start`).

FYI: The MySQL data is stored in the `server_data/mysql_data` sub folder and WordPress in the `server_data/wordpress` 
folder. There is no need to work directly with those two folders. 
