FROM php:7-fpm-alpine
RUN apk update \
    && apk add --no-cache supervisor mysql-client zlib-dev lftp openssh-client \
    && docker-php-ext-install pdo_mysql pcntl bcmath opcache \
    && docker-php-ext-enable pcntl bcmath opcache \
    && apk add --no-cache --virtual .build-deps libzip-dev \
    && docker-php-ext-configure zip \
    && docker-php-ext-install zip \
    && curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer 
