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
php7-mbstring

COPY ./conf/wp_config.sh /

CMD [ "./wp_config.sh" ]