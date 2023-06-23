#! /bin/bash

useradd -m -p $(openssl passwd -1 mrobaii) mrobaii

vsftpd /etc/vsftpd.conf
