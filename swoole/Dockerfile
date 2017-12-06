FROM php:7.1-fpm-alpine
RUN docker-php-ext-install pdo_mysql
RUN chmod 655 build_swoole.sh && sh build_swoole.sh