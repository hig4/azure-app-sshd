FROM nginx:alpine

RUN apk update && apk add openssh \
     && echo "root:Docker!" | chpasswd

COPY sshd_config /etc/ssh/
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

EXPOSE 80 2222

ENTRYPOINT ["/entrypoint.sh"]