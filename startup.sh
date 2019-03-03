#!/bin/bash

cd  /etc/init.d/
./apache2 start
./nginx start
./bind9 start
./cron start
./mysql start
./vesta start
./exim4 start
./dovecot start
./vsftpd start
./spamassassin start
