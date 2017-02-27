.PHONY: build run

run: build
	docker run --rm -d \
		-p 4095:4095 \
		-v $(CURDIR)/znc:/znc \
		-v /etc/ssl:/etc/ssl \
		-e "RUN_USER=$(USER)" \
		mattmcal/znc

interactive: build
	docker run --rm -it \
		-p 4095:4095 \
		-v $(CURDIR)/znc:/znc \
		-v /etc/ssl:/etc/ssl \
		mattmcal/znc /bin/bash

build:
	docker build \
		--build-arg "SSL_GID=$(shell getent group ssl-cert | cut -d: -f3)" \
		-t mattmcal/znc .
