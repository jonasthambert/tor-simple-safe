FROM alpine:latest

MAINTAINER Jonas Thambert <jonas@thambert.com>

EXPOSE 9050

RUN apk add --no-cache tor

COPY ./torrc /etc/tor/torrc

USER tor

CMD ["/usr/bin/tor"]
