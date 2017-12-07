apk add git autoconf build-base linux-headers libaio-dev pcre-dev openssl-dev
ln -s /usr/bin/php-config7 /usr/bin/php-config
ln -s /usr/bin/phpize7 /usr/bin/phpize
cd /root/
git clone git@github.com:swoole/swoole-src.git
cd /root/swoole
phpize
./configure --enable-openssl
make && make install
apk del libaio-dev php-dev git autoconf build-base linux-headers pcre-dev openssl-dev
rm -rf /var/cache/apk/*
rm -rf /var/www/html/services/swoole/swoole/
rm -rf /tmp/*