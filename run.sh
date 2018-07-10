#!/bin/sh

VERSION=7.9.1
DOCKERHUBUSER=mrtestone
REPONAME=armhf-lms

sudo docker run -d \
		-p 9000:9000 \
                -p 9090:9090 \
		-p 3483:3483 \
		-p 3483:3483/udp \
		--hostname="$HOSTNAME-docker-lms" \
		-v "/etc/localtime":"/etc/localtime":ro \
		-v $(pwd)/vol_lms_persist:/var/lib/squeezeboxserver \
		-v $(pwd)/vol_lms_log:/var/log/squeezeboxserver \
		-v $(pwd)/vol_lms_media:/media \
		--name="lms" \
		$DOCKERHUBUSER/$REPONAME:$VERSION
