FROM php:7.3.0-apache

RUN apt-get update && \
    apt-get install -y git zip

RUN docker-php-ext-install pdo_mysql

RUN a2enmod rewrite && service apache2 restart

RUN curl --silent --show-error https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer