apk update
apk add  build-base linux-headers libaio-dev pcre-dev openssl-dev
ln -s /usr/bin/php-config7 /usr/bin/php-config
ln -s /usr/bin/phpize7 /usr/bin/phpize
cd /root/
git clone https://github.com/swoole/swoole-src.git
cd /root/swoole-src
phpize
./configure --enable-openssl
make && make install
apk del --no-cache php-dev
apk del --no-cache git
apk del --no-cache build-base
apk del --no-cache make
apk del --no-cache openssl-dev
apk del --no-cache linux-headers
apk del --no-cache libaio-dev
apk del --no-cache pcre-dev
apk del --no-cache autoconf
apk del --no-cache .persistent-deps
apk del --no-cache libmcrypt-dev
apk del --no-cache g++
rm -rf /var/cache/apk/*
rm -rf /root/swoole-src/
rm /root/build_swoole.sh
rm -fr /usr/local/php
rm -rf /tmp/*