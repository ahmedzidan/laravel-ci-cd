FROM php:7.2-fpm-alpine

RUN apk --update --no-cache add autoconf g++ make vim && \
    pecl install -f xdebug && \
    docker-php-ext-enable xdebug && \
    apk del --purge autoconf g++ make

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && composer global require "hirak/prestissimo:^0.3" --no-update && composer global install --no-dev

RUN mkdir -p \
    /var/www/storage \
    /var/www/bootstrap/cache

RUN chown -R www-data:www-data \
        /var/www/storage \
        /var/www/bootstrap/cache
