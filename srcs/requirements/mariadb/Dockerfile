FROM alpine:3.14

RUN apk update && apk upgrade --no-cache && \
    apk add --no-cache mariadb mariadb-client  && \
    mkdir -p /var/lib/mysql && \
    chown -R mysql:mysql /var/lib/mysql

EXPOSE 3306

USER mysql

CMD [ "mysqld" ]