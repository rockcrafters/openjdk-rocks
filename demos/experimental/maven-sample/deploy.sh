#!/bin/sh

name=$1
(cp -r sample/ ${1}
    cd ${1} &&
    rockcraft pack &&
    find . -name *.rock -exec sudo skopeo --insecure-policy copy oci-archive:{} docker-daemon:${1}:latest \;
    )
