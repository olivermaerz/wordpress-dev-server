#!/bin/bash
echo ""
echo "Setting file permissions for the wordpress and mysql_data folder. You may have to enter your password below."
echo ""
sudo find wordpress mysql_data \( -type d -execdir chmod 2777 '{}' \; \) , \( -type f -execdir chmod 666 '{}' \; \)
sudo chown 33:33 -R wordpress
sudo chown 999:999 -R mysql_data