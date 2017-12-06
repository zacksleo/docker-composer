FROM php:7.1-fpm-alpine
RUN docker-php-ext-install pdo_mysql
RUN chmod 655 /var/www/html/services/swoole/build_swoole.sh && sh /var/www/html/services/swoole/build_swoole.sh