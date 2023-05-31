# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    script.sh                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mrobaii <mrobaii@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/31 11:21:14 by mrobaii           #+#    #+#              #
#    Updated: 2023/05/31 13:59:35 by mrobaii          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

CREATE DATABASE users; > init.sql

USE users; >> init.sql

CREATE TABLE users (
	id INT PRIMARY KEY,
	name VARCHAR(50),
	email VARCHAR(100)
); >> init.sql

INSERT INTO users (id, name, email) VALUES (10, 'SIMO', 'simo@1337.ma'); >> init.sql

mysqld --init-file=/tmp/init.sql