FROM ubuntu:15.10
MAINTAINER "Tom Vaughan <tvaughan@lynxtp.com>"

RUN apt-get -q update                   \
    && DEBIAN_FRONTEND=noninteractive   \
    apt-get -q -y dist-upgrade          \
    && DEBIAN_FRONTEND=noninteractive   \
    apt-get -q -y install               \
        curl                            \
        make                            \
        software-properties-common=*    \
    && apt-get -q clean                 \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/bin/bash"]
CMD []
