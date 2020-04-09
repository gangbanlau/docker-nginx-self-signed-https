# Nginx Proxy with self-signed certificate [![Docker Stars](https://img.shields.io/docker/stars/foxylion/nginx-self-signed-https.svg?style=flat-square)](https://hub.docker.com/r/foxylion/nginx-self-signed-https/) [![Docker Pulls](https://img.shields.io/docker/pulls/foxylion/nginx-self-signed-https.svg?style=flat-square)](https://hub.docker.com/r/foxylion/nginx-self-signed-https/)

This is a small docker image which can be used as a reverse proxy before your
local running service. It acts as a HTTP/2 TLS 1.3 terminating proxy.

## Usage

```bash
docker build -t someone/nginx-self-signed-http2:1.16 .
docker run -d --name app-roxy --net host \
           -e BACKEND=127.0.0.1:8080 -e PROXY_BUFFERING=off -e TLS_0RTT=on \
           someone/nginx-self-signed-http2:1.16
```

Note: This is running the container on the host network. It is required that
port 80 and 443 are not used by any other application. Also this does only work
when Docker can be ran natively. This won't work on Mac OS X and Windows.

## Changelog

. HTTP/2 with TLS 1.3
. nginx 1.16
