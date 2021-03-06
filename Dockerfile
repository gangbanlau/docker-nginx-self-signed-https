FROM nginx:1.16

COPY cert.crt /etc/nginx/cert.crt
COPY cert.key /etc/nginx/cert.key
COPY nginx-default.conf /etc/nginx/conf.d/default.conf
COPY run.sh /run.sh

ENV BACKEND="localhost:8080"
#ENV REMOTE_URL="http://localhost:8080/"
ENV PROXY_BUFFERING="on"
ENV TLS_0RTT="off"

CMD ["/run.sh"]
