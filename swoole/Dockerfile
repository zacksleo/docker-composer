FROM php:7.1-fpm-alpine
RUN docker-php-ext-install pdo_mysql intl
RUN apk update && apk add --no-cache supervisor
RUN pecl install swoole