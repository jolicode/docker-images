FROM jolicode/base
MAINTAINER Joel Wurtz <jwurtz@jolicode.com>

ENV PATH $HOME/.phpenv/bin:$HOME/.phpenv/shims:$PATH

## Install packages to compile php and Force some packages to be installed
RUN sudo apt-get update && \
    sudo apt-get -y build-dep php5-cli && \
    sudo apt-get -y install libmcrypt-dev libltdl-dev libreadline-dev libc-client2007e-dev libbz2-dev libkrb5-dev libcurl4-gnutls-dev libfreetype6-dev libgmp3-dev libjpeg8-dev libpng12-dev libt1-dev libmhash-dev libexpat1-dev libicu-dev libtidy-dev re2c lemon libldap2-dev libsasl2-dev && \
    sudo apt-get clean && \
    sudo rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

## Install PHPEnv
RUN git clone https://github.com/CHH/phpenv.git /tmp/phpenv && \
    /tmp/phpenv/bin/phpenv-install.sh && \
    sudo /bin/bash -c "echo 'eval \"\$(phpenv init -)\"' >> /etc/profile.d/phpenv.sh" && \
    echo 'eval "$(phpenv init -)"' >> $HOME/.bashrc

## PHPBuild
RUN git clone git://github.com/CHH/php-build.git $HOME/.phpenv/plugins/php-build && \
    cp /tmp/phpenv/extensions/rbenv-config-* $HOME/.phpenv/plugins/php-build/bin/

## Add default configure options
ADD default_configure_options $HOME/.phpenv/plugins/php-build/share/php-build/

# Install php tools (composer / phpunit)
RUN cd $HOME && \
    wget http://getcomposer.org/composer.phar && \
    chmod +x composer.phar && \
    mv composer.phar /usr/local/bin/composer && \
    wget https://phar.phpunit.de/phpunit.phar && \
    chmod +x phpunit.phar && \
    mv phpunit.phar /usr/local/bin/phpunit

# Link lib
RUN sudo ln -s /usr/lib/x86_64-linux-gnu/libldap.so              /usr/lib/libldap.so && \
    sudo ln -s /usr/lib/x86_64-linux-gnu/libpng.so               /usr/lib/libpng.so && \
    sudo ln -s /usr/lib/x86_64-linux-gnu/libkrb5.so              /usr/lib/libkrb5.so && \
    sudo ln -s /usr/lib/x86_64-linux-gnu/libjpeg.so              /usr/lib/libjpeg.so && \
    sudo ln -s /usr/lib/x86_64-linux-gnu//usr/lib/libstdc++.so.6 /usr/lib/libstdc++.so.6 && \
    sudo ln -s /usr/lib/x86_64-linux-gnu/libmysqlclient_r.so     /usr/lib/libmysqlclient_r.so
