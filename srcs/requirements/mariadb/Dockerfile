FROM alpine:3.14

RUN apk update && apk upgrade --no-cache && \
apk add --no-cache mariadb mariadb-client

RUN mkdir -p /run/mysqld && \
chown -R mysql:mysql /run/mysqld && \
mysql_install_db --user=mysql --datadir=/var/lib/mysql && \
chown -R mysql:mysql /var/lib/mysql

EXPOSE 3306

COPY ./conf/db_config.sh /tmp/db_config.sh

WORKDIR /tmp

RUN chmod +x db_config.sh

CMD [ "sh", "db_config.sh" ]