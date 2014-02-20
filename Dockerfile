FROM ubuntu
MAINTAINER Joel Wurtz <jwurtz@jolicode.com>

# Add apt repository needed
RUN echo 'deb http://archive.ubuntu.com/ubuntu precise main universe' > /etc/apt/sources.list
RUN echo 'deb http://archive.ubuntu.com/ubuntu precise-security main universe' >> /etc/apt/sources.list
RUN echo 'deb http://archive.ubuntu.com/ubuntu precise-updates main universe' >> /etc/apt/sources.list
RUN echo 'deb http://archive.ubuntu.com/ubuntu precise-backports main restricted universe multiverse' >> /etc/apt/sources.list

# Common
ENV HOME /home
RUN mkdir -p $HOME
RUN apt-get update && apt-get install -y python-software-properties git curl wget