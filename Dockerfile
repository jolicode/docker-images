FROM ubuntu:precise
MAINTAINER Joel Wurtz <jwurtz@jolicode.com>

ENV HOME /home

# Add apt repository needed
RUN echo 'deb http://archive.ubuntu.com/ubuntu precise main universe' > /etc/apt/sources.list  && \
    echo 'deb http://archive.ubuntu.com/ubuntu precise-security main universe' >> /etc/apt/sources.list && \
    echo 'deb http://archive.ubuntu.com/ubuntu precise-updates main universe' >> /etc/apt/sources.list && \
    echo 'deb http://archive.ubuntu.com/ubuntu precise-backports main restricted universe multiverse' >> /etc/apt/sources.list && \
    echo 'deb-src http://archive.ubuntu.com/ubuntu precise main universe' >> /etc/apt/sources.list && \
    echo 'deb-src http://archive.ubuntu.com/ubuntu precise-security main universe' >> /etc/apt/sources.list && \
    echo 'deb-src http://archive.ubuntu.com/ubuntu precise-updates main universe' >> /etc/apt/sources.list && \
    echo 'deb-src http://archive.ubuntu.com/ubuntu precise-backports main restricted universe multiverse' >> /etc/apt/sources.list && \
    mkdir -p $HOME && \
    apt-get update && \
    apt-get install -y python-software-properties python-pip git curl wget sudo socat && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# ADD Travis User
RUN addgroup --gid=1000 travis && \
    adduser --system --uid=1000 --home /home --shell /bin/bash travis && \
    echo "travis ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers && \
    chown -R travis:travis /home && \
    chown -R travis:travis /usr/local

USER travis
