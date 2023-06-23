FROM debian:buster

RUN apt-get update && apt-get install redis-server -y

COPY redis.conf /etc/redis/redis.conf

CMD ["redis-server", "--daemonize", "no"]
