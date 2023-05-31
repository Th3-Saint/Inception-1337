# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mrobaii <mrobaii@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/31 03:05:50 by mrobaii           #+#    #+#              #
#    Updated: 2023/05/31 06:25:28 by mrobaii          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM ubuntu

RUN export DEBIAN_FRONTEND=noninteractive \
	&& apt-get update \
	&& apt-get install -y nginx \
	&& apt install -y mariadb-server \
	&& apt-get install -y wordpress \
	&& apt-get install -y php-fpm

CMD ["nginx", "-g", "daemon off;"]
