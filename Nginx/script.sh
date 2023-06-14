#! /bin/bash

chown www-data:www-data /usr/share/nginx/mrobaii.42.fr -R

rm sites-enabled/default

rm sites-available/default

nginx -g "daemon off;"