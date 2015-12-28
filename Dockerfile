FROM ubuntu:15.10
MAINTAINER "Tom Vaughan <tvaughan@lynxtp.com>"

RUN apt-get -q update

RUN DEBIAN_FRONTEND=noninteractive \
    apt-get -q -y dist-upgrade
RUN DEBIAN_FRONTEND=noninteractive \
    apt-get -q -y install curl software-properties-common

ENTRYPOINT ["/bin/bash"]
CMD []
