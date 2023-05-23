FROM alpine:3.14

RUN apk update && apk upgrade --no-cache && \
apk add --no-cache mariadb mariadb-client

RUN sed -i 's/skip-networking/#skip-networking/1' /etc/my.cnf.d/mariadb-server.cnf && \
sed -i "s/#bind-address=0.0.0.0/bind-address=0.0.0.0/1" /etc/my.cnf.d/mariadb-server.cnf

RUN mkdir -p /run/mysqld && \
chown -R mysql:mysql /run/mysqld && \
mysql_install_db --user=mysql --datadir=/var/lib/mysql && \
chown -R mysql:mysql /var/lib/mysql

EXPOSE 3306

COPY ./conf/db_config.sh /tmp/db_config.sh

WORKDIR /tmp

RUN chmod +x db_config.sh

CMD [ "sh", "db_config.sh" ]