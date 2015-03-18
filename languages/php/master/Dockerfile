FROM jolicode/phpenv
MAINTAINER Joel Wurtz <jwurtz@jolicode.com>

RUN MAKEFLAGS=' -j8' phpenv install master && phpenv global master && phpenv rehash
COPY jolicode.ini /home/.phpenv/versions/master/etc/conf.d/jolicode.ini
