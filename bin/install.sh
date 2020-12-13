#!/bin/bash

realpath2() {
  OURPWD=$PWD
  cd "$(dirname "$1")"
  LINK=$(readlink "$(basename "$1")")
  while [ "$LINK" ]; do
    cd "$(dirname "$LINK")"
    LINK=$(readlink "$(basename "$1")")
  done
  REALPATH="$PWD/$(basename "$1")"
  cd "$OURPWD"
  echo "$REALPATH"
}

main_dir="$(dirname $(dirname $(realpath2 "$@" $0)) )"
cd "$main_dir" || exit

# Download and untar WordPress
printf "\nDownloading latest version of WordPress ...\n"

curl -O https://wordpress.org/latest.tar.gz
tar -xzf latest.tar.gz -C server_files/
rm latest.tar.gz
chmod +x bin/*.sh

./bin/start.sh

printf "\nSetup complete. You can now navigate to http://localhost:8080/ in your browser.\n"
printf "\nTo stop the development server run './stop.sh' in this directory.\n"
printf "\nTo start the development server in the future run './start.sh'.\n"

