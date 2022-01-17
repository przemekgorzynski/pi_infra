#!/bin/bash

function pihole_run {
    docker run \
    --name=pihole \
    -dt \
    -e TZ=Europe/Warsaw \
    -e WEBPASSWORD=webpass \
    -e SERVERIP=192.168.0.61 \
    -v /pihole/app:/etc/pihole \
    -v /pihole/dnsmasq:/etc/dnsmasq.d \
    -p 80:80/tcp \
    -p 53:53/tcp \
    -p 53:53/udp \
    -p 67:67/udp \
    --restart=unless-stopped \
    pihole/pihole
}

pihole_check=`docker ps -a | grep pihole | awk '{ print $1 }'`

if [ -z "$pihole_check" ]; then
    pihole_run
else
    docker stop $pihole_check
    docker rm $pihole_check
    docker rmi pihole/pihole
    pihole_run
fi