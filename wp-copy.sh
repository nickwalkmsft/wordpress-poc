#!/usr/bin/env bash

set -e

tar --exclude="index.php" -xzf /tmp/wp.tar.gz -C /home/site/wwwroot
tar -xzf /tmp/wp.tar.gz -C /home/site/wwwroot index.php