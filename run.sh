#!/bin/bash

sed -i -e "s|XX_REMOTE_URL_XX|$REMOTE_URL|g" /etc/nginx/conf.d/default.conf
sed -i -e "s|XX_PROXY_BUFFERING_XX|$PROXY_BUFFERING|g" /etc/nginx/conf.d/default.conf
sed -i -e "s|XX_TLS_0RTT_XX|$TLS_0RTT|g" /etc/nginx/conf.d/default.conf
sed -i -e "s|XX_BACKEND_XX|$BACKEND|g" /etc/nginx/conf.d/default.conf
exec nginx -g "daemon off;"
