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

FROM debian:buster

COPY script.sh script.sh

RUN apt-get update && apt-get install -y unzip wget php7.3 php-fpm  php-mysql && chmod +x script.sh

RUN wget https://wordpress.org/latest.zip && unzip latest.zip && mv wordpress mrobaii.42.fr && service php7.3-fpm start

COPY wp-config.php /mrobaii.42.fr/wp-config.php

COPY www.conf /etc/php/7.3/fpm/pool.d/www.conf

CMD ["./script.sh", "/usr/sbin/php-fpm7.3", "--nodaemonize"]


