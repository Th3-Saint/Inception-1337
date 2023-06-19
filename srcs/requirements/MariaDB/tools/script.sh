#!/bin/bash

service mysql start

sleep 3

mysql -u root -e "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_USER_PASSWORD';"

mysql -u root -e "CREATE DATABASE IF NOT EXISTS $WP_DATABASE;"

mysql -u root -e "GRANT ALL PRIVILEGES ON $WP_DATABASE.* to '$MYSQL_USER'@'%';"

mysql -u root -e "FLUSH PRIVILEGES;"

service mysql stop
mysqld_safe