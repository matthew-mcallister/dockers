.PHONY: build run

build:
	docker build -t mattmcal/znc znc

run:
	docker run -d -p 4095:4095 -v /home/z/zn/znc/.znc:/home/znc/.znc -v /etc/ssl:/etc/ssl: mattmcal/znc
