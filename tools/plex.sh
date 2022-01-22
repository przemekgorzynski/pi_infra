#!/bin/bash

function plex_run {
    docker run \
    -dt \
    --name=plex \
    --network=host \
    -v /plex:/config:rw \
    -v /samba_shares/filmy/bajki:/data/bajki:rw \
    -v /samba_shares/filmy/filmy:/data/movies:rw \
    -v /plex:/transcode:rw \
    linuxserver/plex
}

plex_check=`docker ps -a | grep plex | awk '{ print $1 }'`

if [ -z "$plex_check" ]; then
    plex_run
else
    docker stop $plex_check
    docker rm $plex_check
    docker rmi linuxserver/plex
    plex_run
fi