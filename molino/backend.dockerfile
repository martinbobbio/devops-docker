FROM php:7.2-fpm-alpine

RUN apk update \
    && apk add  --no-cache \
    git \ 
    curl \ 
    icu-dev \
    libxml2-dev \ 
    g++ \ 
    make \
    autoconf \
    && docker-php-source extract \
    && pecl install xdebug \
    && docker-php-ext-enable xdebug \ 
    && docker-php-source delete \
    && docker-php-ext-install pdo_mysql soap intl zip \
    && echo "zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)" > /usr/local/etc/php/conf.d/xdebug.ini \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && rm -rf /tmp/*

WORKDIR /usr/src
RUN git clone https://github.com/martinbobbio/backend-molino-tenis
RUN rm -rf /path/.git
WORKDIR /usr/src/backend-molino-tenis

RUN composer install

EXPOSE 8081

CMD php app/console server:run 0.0.0.0:8081