FROM jolicode/phpenv
MAINTAINER Joel Wurtz <jwurtz@jolicode.com>

RUN MAKEFLAGS=' -j8' phpenv install 5.5.18 && phpenv global 5.5.18 && phpenv rehash
COPY jolicode.ini /home/.phpenv/versions/5.5.18/etc/conf.d/jolicode.ini
