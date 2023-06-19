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
	&& apt-get install openssl

WORKDIR /etc/nginx

COPY ./conf/ssl/ ssl/

COPY ./conf/nginx.conf .

COPY ./tools/script.sh .

RUN chmod +x script.sh 

EXPOSE 443

CMD ["./script.sh"]