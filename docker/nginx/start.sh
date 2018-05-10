#!/bin/sh

RESOLVER_IP=$(cat /etc/resolv.conf |grep -i '^nameserver'|head -n1|cut -d ' ' -f2)
/bin/sed -i "s/{RESOLVER_IP}/${RESOLVER_IP}/" /etc/nginx/nginx.conf 

nginx -g "daemon off;"