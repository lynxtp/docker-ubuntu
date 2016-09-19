#!/bin/sh -e
# -*- coding: utf-8; mode: sh -*-
CONTAINER=lynxtp/ubuntu
VERSION=16.04
CMD=$(basename $0)
docker run --rm -i -t -v $PWD:/mnt/workdir -w /mnt/workdir $CONTAINER:$VERSION $CMD "$@"
exit 0
