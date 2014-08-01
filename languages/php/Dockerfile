FROM jolicode/base
MAINTAINER Joel Wurtz <jwurtz@jolicode.com>

## Install packages to compile php
RUN apt-get -y build-dep php5-cli
RUN apt-get -y install libmcrypt-dev libreadline-dev

## Install RBENV
RUN git clone https://github.com/CHH/phpenv.git  /tmp/phpenv
RUN /tmp/phpenv/bin/phpenv-install.sh
ENV PATH $HOME/.phpenv/bin:$HOME/.phpenv/shims:$PATH
RUN echo 'eval "$(phpenv init -)"' >> /etc/profile.d/phpenv.sh
RUN echo 'eval "$(phpenv init -)"' >> $HOME/.bashrc

## PHPBuild
RUN git clone git://github.com/CHH/php-build.git $HOME/.phpenv/plugins/php-build

# Install composer
ONBUILD RUN bash -c "wget http://getcomposer.org/composer.phar && chmod +x composer.phar && mv composer.phar /usr/local/bin/composer"

# Install PHPUnit
ONBUILD RUN bash -c "wget https://phar.phpunit.de/phpunit.phar && chmod +x phpunit.phar && mv phpunit.phar /usr/local/bin/phpunit"
