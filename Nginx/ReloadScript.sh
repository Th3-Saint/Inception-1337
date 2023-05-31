#!/bin/bash

CONFIG_FILE="/etc/nginx/nginx.conf"

nginx -g "daemon off;" &
inotifywait -m -e modify --format '%w%f' "$CONFIG_FILE" | while read -r FILE
do
    echo "Reloading NGINX configuration..."
    nginx -s reload
done
