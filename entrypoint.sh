#!/bin/sh

/usr/bin/ssh-keygen -A
/usr/sbin/sshd
nginx -g "daemon off;"