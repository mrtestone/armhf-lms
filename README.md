# Docker Container: Logitech Media Server for armhf (Raspberry Pi, ...)

As previous repo is not updated anymore, this is meant to be a fork for the latest version of the LMS.

Current version LMS: 7.9.1

Based on https://github.com/heziegl/rpi-lms

Folders to map (for permanent data):
/var/log/squeezeboxserver
/var/lib/squeezeboxserver

Ports to map:
3483/tcp
3483/udp
9000/tcp
90907tcp

example run:
```
docker run -d \
  -p 9080:9080 \
  -p 9000:9000 \
  -p 3483:3483 \
  -p 3483:3483/udp \
  mrtestone/armhf-lms:7.9.1
```
