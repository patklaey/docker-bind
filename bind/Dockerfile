FROM alpine 
LABEL maintainer="pat@247.ch"

RUN apk add bind

RUN mkdir -p /etc/bind/zones

CMD ["/usr/sbin/named","-4f","-u","named"]

EXPOSE 53
