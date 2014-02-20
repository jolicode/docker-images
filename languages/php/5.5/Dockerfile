FROM jolicode/base
MAINTAINER Joel Wurtz <jwurtz@jolicode.com>

# Add php 5.4 repository
RUN add-apt-repository ppa:ondrej/php5 && apt-get update

# Install deps
RUN apt-get install -y php5-cli php5-curl php-apc php5-mysql php5-intl php5-xdebug php5-mcrypt php5-pgsql php5-sqlite

# Install composer
RUN bash -c "wget http://getcomposer.org/composer.phar && chmod +x composer.phar && mv composer.phar /usr/local/bin/composer"

# Install PHPUnit
RUN bash -c "wget https://phar.phpunit.de/phpunit.phar && chmod +x phpunit.phar && mv phpunit.phar /usr/local/bin/phpunit"