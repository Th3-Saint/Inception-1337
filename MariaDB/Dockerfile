# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mrobaii <mrobaii@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/31 10:45:17 by mrobaii           #+#    #+#              #
#    Updated: 2023/05/31 14:00:41 by mrobaii          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update \
	&& apt-get install -y mariadb-server

COPY script.sh /tmp/script.sh

RUN chmod +x /tmp/script.sh

RUN service mysql start

WORKDIR /tmp/

CMD bash -c /tmp/script.sh