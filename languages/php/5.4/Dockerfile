FROM jolicode/phpenv
MAINTAINER Joel Wurtz <jwurtz@jolicode.com>

RUN MAKEFLAGS=' -j8' phpenv install 5.4.34 && phpenv global 5.4.34 && phpenv rehash
COPY jolicode.ini /home/.phpenv/versions/5.4.34/etc/conf.d/jolicode.ini
