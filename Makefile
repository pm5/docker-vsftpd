
.PHONY: build test run

build:
	docker build -t pomin5/docker-vsftpd .

test:
	docker run -it --rm -p 2121:21 --name test-vsftpd pomin5/docker-vsftpd /bin/bash

run:
	docker run -d -p 2121:21 pomin5/docker-vsftpd

clean:
	docker rm test-vsftpd
