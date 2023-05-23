FROM alpine:3.14

RUN apk update && apk upgrade --no-cache && apk add --no-cache \
curl \
php7 \
php7-fpm \
php7-mysqli \
php7-pdo_mysql \
php7-phar \
php7-json \
php7-openssl \
php7-curl \
php7-zlib \
php7-mbstring && \
sed -i "s/listen = 127.0.0.1:9000/listen = 0.0.0.0:9000/1" /etc/php7/php-fpm.d/www.conf

COPY ./conf/wp_config.sh /

RUN chmod +x wp_config.sh

EXPOSE 9000

CMD [ "sh", "wp_config.sh" ]