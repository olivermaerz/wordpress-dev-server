#!/bin/bash

# check if running on Linux
unameOut="$(uname -s)"
if [ "${unameOut}" == "Linux" ]; then
  # running under Linux ... change the permissions
  echo ""
  echo "Setting file permissions for the wordpress and mysql_data folder. You may have to enter your password below."
  echo ""
  sudo find wordpress mysql_data \( -type d -execdir chmod 2777 '{}' \; \) , \( -type f -execdir chmod 666 '{}' \; \)
  sudo chown 33:33 -R wordpress
  sudo chown 999:999 -R mysql_data
else
  # not running under Linux - do not do anything
  echo ""
  echo "Skip setting the file permissions, because not running under Linux."
  echo ""
fi
