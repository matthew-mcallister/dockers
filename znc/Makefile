.PHONY: build interactive run

build:
	docker build -t mattmcal/znc .

interactive: build
	docker run -p 4095:4095 -v /home/z/zn/znc/.znc:/home/znc/.znc \
		-v /etc/ssl:/etc/ssl -i -t --entrypoint=/bin/bash mattmcal/znc \
		|| true

run: build
	docker run -d -p 4095:4095 -v /home/z/zn/znc/.znc:/home/znc/.znc \
		-v /etc/ssl:/etc/ssl mattmcal/znc
