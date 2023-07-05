#!/bin/bash

# Add user
useradd -c 'User Bob' -m -s /bin/false bob
echo "bob:bob123" | chpasswd

service dovecot start
/usr/sbin/postfix start-fg
