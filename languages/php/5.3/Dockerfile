FROM jolicode/phpenv
MAINTAINER Joel Wurtz <jwurtz@jolicode.com>

RUN MAKEFLAGS=' -j8' LDFLAGS=-lstdc++ phpenv install 5.3.29 && phpenv global 5.3.29 && phpenv rehash
