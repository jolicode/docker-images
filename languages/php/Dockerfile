FROM jolicode/base
MAINTAINER Joel Wurtz <jwurtz@jolicode.com>

## Install packages to compile php
RUN apt-get -y build-dep php5-cli
## Force some packages to be installed
RUN apt-get -y install libmcrypt-dev libltdl-dev libreadline-dev libc-client2007e-dev libbz2-dev libkrb5-dev libcurl4-gnutls-dev libfreetype6-dev libgmp3-dev libjpeg8-dev libpng12-dev libt1-dev libmhash-dev libexpat1-dev libicu-dev libtidy-dev re2c lemon libldap2-dev libsasl2-dev

## Install RBENV
RUN git clone https://github.com/CHH/phpenv.git  /tmp/phpenv
RUN /tmp/phpenv/bin/phpenv-install.sh
ENV PATH $HOME/.phpenv/bin:$HOME/.phpenv/shims:$PATH
RUN echo 'eval "$(phpenv init -)"' >> /etc/profile.d/phpenv.sh
RUN echo 'eval "$(phpenv init -)"' >> $HOME/.bashrc

## PHPBuild
RUN git clone git://github.com/CHH/php-build.git $HOME/.phpenv/plugins/php-build

## Add default configure options
ADD default_configure_options $HOME/.phpenv/plugins/php-build/share/php-build/

# Install composer
RUN bash -c "wget http://getcomposer.org/composer.phar && chmod +x composer.phar && mv composer.phar /usr/local/bin/composer"

# Install PHPUnit
RUN bash -c "wget https://phar.phpunit.de/phpunit.phar && chmod +x phpunit.phar && mv phpunit.phar /usr/local/bin/phpunit"

# Link lib
RUN ln -s /usr/lib/x86_64-linux-gnu/libldap.so              /usr/lib/libldap.so
RUN ln -s /usr/lib/x86_64-linux-gnu/libpng.so               /usr/lib/libpng.so
RUN ln -s /usr/lib/x86_64-linux-gnu/libkrb5.so              /usr/lib/libkrb5.so
RUN ln -s /usr/lib/x86_64-linux-gnu/libjpeg.so              /usr/lib/libjpeg.so
RUN ln -s /usr/lib/x86_64-linux-gnu//usr/lib/libstdc++.so.6 /usr/lib/libstdc++.so.6
RUN ln -s /usr/lib/x86_64-linux-gnu/libmysqlclient_r.so     /usr/lib/libmysqlclient_r.so

# Clean
RUN apt-get autoremove -y && apt-get clean all
