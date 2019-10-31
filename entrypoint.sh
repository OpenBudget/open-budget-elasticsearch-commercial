#!/bin/sh

# Decrypt file
cd /app
echo $DECODE_KEY | openssl enc -d -aes-256-cbc -pass stdin -in plugin.zip.enc -out plugin.zip
yes | elasticsearch-plugin install --verbose file:///app/plugin.zip || exit

# call original entrypoint
/usr/local/bin/docker-entrypoint.sh eswrapper