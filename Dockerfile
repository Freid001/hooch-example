FROM php:7.1-apache

RUN apt-get update && \
    apt-get install -y \
    curl \
    git \
    zip \
    unzip

RUN docker-php-ext-configure pdo_mysql --with-pdo-mysqli=mysqlnd && \
    docker-php-ext-install pdo_mysql && \
    docker-php-ext-enable pdo_mysql && \
    docker-php-ext-configure mysqli --with-mysql=mysqlnd && \
    docker-php-ext-install mysqli && \
    docker-php-ext-enable mysqli

ENV COMPOSER_ALLOW_SUPERUSER 1

RUN cd ~ && \
    curl -sS https://getcomposer.org/installer -o composer-setup.php && \
    php composer-setup.php --install-dir=/usr/local/bin --filename=composer

COPY entrypoint.sh /opt/app/bin/entrypoint.sh
COPY ./ /var/www/app

WORKDIR /opt/app/bin

RUN cd /var/www/app && composer install

EXPOSE 8000

ENTRYPOINT ["/bin/sh", "./entrypoint.sh"]

ARG VERSION
ARG GHASH
ARG BUILD_TIME

ENV VERSION $VERSION
ENV GHASH $GHASH
ENV BUILD_TIME $BUILD_TIME
