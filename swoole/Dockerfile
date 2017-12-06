FROM php:7.1-fpm-alpine
RUN docker-php-ext-install pdo_mysql
ADD build_swoole.sh /root/
RUN sh /root/build_swoole.sh