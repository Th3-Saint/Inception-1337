FROM ubuntu

RUN  apt-get update &&  apt-get install -y nginx && apt-get install -y inotify-tools && apt-get install openssl

WORKDIR /etc/nginx

COPY ssl/ ssl/

COPY . .

RUN chmod 777 ReloadScript.sh

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]