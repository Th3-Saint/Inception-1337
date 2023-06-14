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



CREATE DATABASE wordpress;

USE wordpress;

CREATE TABLE USER (
	id INT PRIMARY KEY,
	name VARCHAR(50),
	email VARCHAR(100)
);

CREATE USER 'mrobaii'@'localhost' IDENTIFIED BY 'mrobaii';

GRANT ALL PRIVILEGES ON wordpress.* TO 'mrobaii'@'localhost';

FLUSH PRIVILEGES;