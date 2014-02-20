FROM jolicode/base
MAINTAINER Joel Wurtz <jwurtz@jolicode.com>

# Add php 5.4 repository
RUN wget -O - http://dl.hhvm.com/conf/hhvm.gpg.key | sudo apt-key add -
RUN echo deb http://dl.hhvm.com/ubuntu precise main | sudo tee /etc/apt/sources.list.d/hhvm.list

# Install deps
RUN apt-get update && apt-get install -y hhvm
RUN ln -s /usr/bin/hhvm /usr/bin/php

# Install composer
RUN bash -c "wget http://getcomposer.org/composer.phar && chmod +x composer.phar && mv composer.phar /usr/local/bin/composer"

# Install PHPUnit
RUN bash -c "wget https://phar.phpunit.de/phpunit.phar && chmod +x phpunit.phar && mv phpunit.phar /usr/local/bin/phpunit"