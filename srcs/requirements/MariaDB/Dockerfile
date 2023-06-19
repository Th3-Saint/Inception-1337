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

COPY ./tools/script.sh script.sh

COPY ./conf/50.server.cnf /etc/mysql/mariadb.conf.d/

RUN chmod +x script.sh 

CMD ["./script.sh"]
