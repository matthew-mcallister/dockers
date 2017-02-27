FROM theocf/debian:stretch

ARG SSL_GID

RUN apt-get update && \
    apt-get install -y znc

RUN groupadd -g $SSL_GID ssl-cert

ADD run-in-docker /run-in-docker
EXPOSE 4095

CMD ["/run-in-docker"]
