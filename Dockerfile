FROM php

RUN apt-get update \
    && apt-get install -y autoconf pkg-config libssl-dev \
    && pecl install mongodb-1.2.2 \
    && docker-php-ext-install bcmath \
    && echo "extension=mongodb.so" >> /usr/local/etc/php/conf.d/mongodb.ini