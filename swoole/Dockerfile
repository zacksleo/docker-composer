FROM php:7.1-fpm-alpine
#RUN echo "http://mirrors.aliyun.com/alpine/v3.4/main/" > /etc/apk/repositories
RUN apk update \
    && apk update && apk add --no-cache git libmcrypt libmcrypt-dev \
    freetype libpng libjpeg-turbo freetype-dev libpng-dev libjpeg-turbo-dev \
    g++ make autoconf supervisor \
    && docker-php-ext-install mcrypt pdo_mysql \

 && docker-php-ext-configure gd \
    --with-gd \
    --with-freetype-dir=/usr/include/ \
    --with-png-dir=/usr/include/ \
    --with-jpeg-dir=/usr/include/ \

 && docker-php-ext-install gd  \
 && apk del --no-cache freetype-dev libpng-dev libjpeg-turbo-dev