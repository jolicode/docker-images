FROM jolicode/base
MAINTAINER Joel Wurtz <jwurtz@jolicode.com>

# Install HHVM
RUN sudo add-apt-repository ppa:mapnik/boost && \
    wget -O - http://dl.hhvm.com/conf/hhvm.gpg.key | sudo apt-key add - && \
    echo deb http://dl.hhvm.com/ubuntu precise main | sudo tee /etc/apt/sources.list.d/hhvm.list && \
    sudo apt-get update && \
    sudo apt-get install -y libgmp10 hhvm && \
    sudo apt-get clean && \
    sudo rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Install php tools (composer / phpunit)
RUN cd $HOME && \
    wget http://getcomposer.org/composer.phar && \
    chmod +x composer.phar && \
    mv composer.phar /usr/local/bin/composer && \
    wget https://phar.phpunit.de/phpunit.phar && \
    chmod +x phpunit.phar && \
    mv phpunit.phar /usr/local/bin/phpunit
