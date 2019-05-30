FROM zacksleo/docker-composer:alpine
RUN apk add libressl-dev && pecl install mongodb && docker-php-ext-enable mongodb
