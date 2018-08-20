FROM zacksleo/docker-composer:alpine
# RUN echo "http://mirrors.aliyun.com/alpine/v3.4/main/" > /etc/apk/repositories
RUN apk update && apk add --no-cache openssl-dev

#RUN pecl install swoole && docker-php-ext-enable swoole

RUN pecl download swoole && mv swoole-* swoole.tgz && gzip -d < swoole.tgz | tar -xvf - \
&& cd swoole-* && phpize \
&& ./configure --enable-openssl \
&& make && make install \
&& rm -f swoole.tgz && rm -rf swoole-*

RUN docker-php-ext-enable swoole
RUN apk del --no-cache openssl-dev
RUN php --ri swoole
