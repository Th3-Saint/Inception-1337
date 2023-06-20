#! /bin/bash

useradd -m -p $(openssl passwd -1 mrobaii) mrobaii

service vsftpd start

tail -f /dev/null
