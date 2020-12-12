# A Docker based WordPress Development Server

This is a Docker based dev server for WordPress projects. The installation script will download the latest version of
WordPress and then build a docker container for Apache running WordPress and another container running MySQL 5.7.

Once the setup is complete you will be able to access the dev server at http://localhost:8080

The MySQL data is stored in the `mysql_data` sub folder and WordPress in the `wordpress` sub folder.

Make sure you have Docker installed and running on your computer ([Docker Installation Instructions](https://docs.docker.com/engine/install/)) and then run  `./install.sh` script.

To stop the development server run: `./stop`

To restart the development server run: `./start`