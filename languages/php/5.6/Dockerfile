FROM jolicode/phpenv
MAINTAINER Joel Wurtz <jwurtz@jolicode.com>

RUN MAKEFLAGS=' -j8' phpenv install 5.6.2 && phpenv global 5.6.2 && phpenv rehash
COPY ../jolicode.ini /home/.phpenv/versions/5.6.2/etc/conf.d/jolicode.ini
