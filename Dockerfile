FROM resin/rpi-raspbian:jessie
MAINTAINER Piotr Gburzynski, https://github.com/mrtestone


RUN     apt-get update && \
        apt-get -y install perl adduser iproute iputils-ping curl wget faad flac lame sox libio-socket-ssl-perl


ENV    SQUEEZE_VOL_PERSIST=/var/lib/squeezeboxserver \
	SQUEEZE_VOL_LOG=/var/log/squeezeboxserver \
	LANG=C.UTF-8 \
	LMS_URL=http://downloads.slimdevices.com/nightly/7.9/sc/b7921c643967d891590e9c120464f3101fd04d48/logitechmediaserver_7.9.2~1561089896_arm.deb

RUN	curl -Lf -o /tmp/lms.deb $LMS_URL && \
	dpkg -i /tmp/lms.deb && \
	rm -f /tmp/lms.deb && \
	apt-get clean

VOLUME 	$SQUEEZE_VOL_PERSIST $SQUEEZE_VOL_LOG
EXPOSE 	3483 3483/udp 9000 9090

COPY entrypoint.sh.txt /entrypoint.sh
RUN chmod 755 /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

