# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mrobaii <mrobaii@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/31 03:05:54 by mrobaii           #+#    #+#              #
#    Updated: 2023/05/31 10:45:09 by mrobaii          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN  apt-get update \
	&&  apt-get install -y nginx \
	&& apt-get install -y inotify-tools \
	&& apt-get install openssl

WORKDIR /etc/nginx

COPY ssl/ ssl/

COPY . .

RUN chmod 777 ReloadScript.sh

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]œ