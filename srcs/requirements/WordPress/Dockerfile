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


COPY ./tools/script.sh script.sh

RUN apt-get update && apt-get install -y unzip wget php7.3 php-fpm  php-mysql && chmod +x script.sh && mkdir -p /var/www/

RUN wget https://wordpress.org/latest.zip && unzip latest.zip -d /var/www/ && mv /var/www/wordpress /var/www/html && service php7.3-fpm start

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf

COPY ./conf/wp-config.php /var/www/html/wp-config.php

CMD ["./script.sh"]


