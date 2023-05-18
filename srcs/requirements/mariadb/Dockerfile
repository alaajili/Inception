FROM    alpine:3.14

RUN     apk update && apk upgrade --no-cache && apk add --no-cache mariadb mariadb-client

EXPOSE  3306

CMD [ "mysqld", "--user=mysql", "--console" ]