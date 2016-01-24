FROM jolicode/phpenv
MAINTAINER Joel Wurtz <jwurtz@jolicode.com>

RUN MAKEFLAGS=' -j8' LDFLAGS=-lstdc++ phpenv install 5.3.29 && \
    phpenv global 5.3.29 && \
    phpenv rehash && \
    pear config-set php_ini $(php -r 'echo php_ini_loaded_file();')
COPY jolicode.ini /home/.phpenv/versions/5.3.29/etc/conf.d/jolicode.ini
