FROM php:7.1-fpm-alpine

RUN apk --update add --no-cache git bash docker openssh-client freetype libpng libjpeg-turbo freetype-dev libpng-dev libjpeg-turbo-dev \

&& docker-php-ext-configure gd \
    --with-gd \
    --with-freetype-dir=/usr/include/ \
    --with-png-dir=/usr/include/ \
    --with-jpeg-dir=/usr/include/ \

 && docker-php-ext-install intl \
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-install mbstring \
    && docker-php-ext-install mcrypt \
    && docker-php-ext-install opcache \
    && docker-php-ext-install zip \
    && pecl install apcu-5.1.3 && echo extension=apcu.so > /usr/local/etc/php/conf.d/apcu.ini \

&& docker-php-ext-install gd  \
&& apk del --no-cache freetype-dev libpng-dev libjpeg-turbo-dev  \

&& curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer \
    && composer global require --no-progress "fxp/composer-asset-plugin:^1.0" \
    && composer global require --no-progress "squizlabs/php_codesniffer:^2.0" \
    && composer gloabl require --no-progress "codeception/codeception:^2.2"
