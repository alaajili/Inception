FROM alpine:3.14

RUN apk update && apk upgrade --no-cache && \
apk add --no-cache mariadb mariadb-client

RUN mkdir -p /run/mysqld && \
chown -R mysql:mysql /run/mysqld && \
mysql_install_db --user=mysql --datadir=/var/lib/mysql

EXPOSE 3306

CMD [ "mysqld", "--user=mysql" ]