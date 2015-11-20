FROM theocf/debian:latest

RUN apt-get update && \
    apt-get install -y znc

RUN groupadd -g 115 ssl-cert && \
    groupadd -g 574 znc && \
    useradd -u 574 -g 574 -G ssl-cert znc && \
    mkdir -p /home/znc/.znc && \
    chown -R znc:znc /home/znc

ADD entrypoint.sh /entrypoint.sh
VOLUME /home/znc/.znc
VOLUME /etc/ssl
EXPOSE 4095

ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
CMD [""]
