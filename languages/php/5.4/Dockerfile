FROM jolicode/phpenv
MAINTAINER Joel Wurtz <jwurtz@jolicode.com>

RUN MAKEFLAGS=' -j2' phpenv install 5.4.34 && \
    phpenv global 5.4.34 && \
    phpenv rehash && \
    pear config-set php_ini $(php -r 'echo php_ini_loaded_file();')
COPY jolicode.ini /home/.phpenv/versions/5.4.34/etc/conf.d/jolicode.ini
