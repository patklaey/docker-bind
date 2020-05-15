FROM alpine 
LABEL maintainer="pat@247.ch"

RUN apk add bind

COPY named.conf /etc/bind/
RUN mkdir -p /etc/bind/zones

CMD ["/usr/sbin/named","-4f","-u","named"]

EXPOSE 53
