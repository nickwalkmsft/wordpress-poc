#!/usr/bin/env bash

set -e

if ! [ -e /home/site/wwwroot/index.php -a -e /home/site/wwwroot/wp-includes/version.php ]; then
  echo "Wordpress not found, copying to site root"
  echo "Copying Wordpress files, please refresh in a moment" > /home/site/wwwroot/index.php
  /tmp/wp-copy.sh &
else
  echo "Existing wordpress installation found"
fi

exec /usr/local/bin/entrypoint.sh
