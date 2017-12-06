FROM php:7.1-fpm-alpine
RUN docker-php-ext-install pdo_mysql
RUN apk update && apk add --no-cache g++ make autoconf supervisor
RUN pecl install swoole