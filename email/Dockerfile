from ubuntu:latest

RUN apt update -y

RUN apt upgrade -y

RUN apt install postfix dovecot-imapd dovecot-pop3d telnet -y

COPY main.cf /etc/postfix

COPY ./dovecot/* /etc/dovecot/conf.d

COPY start_email.sh /etc/init.d

RUN chmod 755 /etc/init.d/start_email.sh

# Expose Ports
EXPOSE 25/tcp 587/tcp 110/tcp 143/tcp

CMD ["/etc/init.d/start_email.sh"]
# Start the postfix Service
#CMD ["/usr/sbin/postfix","start-fg"]