## About

This is a script and a Dockerfile to build a Ubuntu Precise 32 bit docker image, based on https://github.com/daald/docker-brew-ubuntu-core-32bit.

## Build

	download official clould image:

	  ./download_cloudimg.sh

	build docker image:

	  docker build -t $(whoami)/docker-ubuntu-precise-core-i386 .

## Result

	$ docker images
	REPOSITORY                      TAG                 IMAGE ID            CREATED             SIZE
	ouyi/ubuntu-precise-core-i386   latest              7c870020bc74        2 days ago           115.7 MB

## Usage

In a Dockerfile, you can use (you may need to replace the user name)

    FROM ouyi/docker-ubuntu-precise-core-i386

