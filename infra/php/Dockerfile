FROM php:7.4-fpm-buster
SHELL ["/bin/bash", "-oeux", "pipefail", "-c"]

ENV COMPOSER_ALLOW_SUPERUSER=1 \
  COMPOSER_HOME=/composer

COPY --from=composer:1.10 /usr/bin/composer /usr/bin/composer

RUN apt-get update && \
  apt-get -y install git unzip libzip-dev libicu-dev libonig-dev libmagickwand-dev &&\
  # apt-get -y install nodejs npm && npm install n -g && n 16.10.0 && \
  # libpq-dev libfreetype6-dev libjpeg62-turbo-dev libpng-dev libwebp-dev libxpm-dev&& \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* && \
  docker-php-ext-configure gd --with-jpeg --with-freetype && \
  docker-php-ext-install intl pdo_mysql zip bcmath gd mysqli



COPY ./php.ini /usr/local/etc/php/php.ini

WORKDIR /work