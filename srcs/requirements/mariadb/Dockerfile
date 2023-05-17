FROM    alpine:3.14

# Install MariaDB and dependencies
RUN     apk update && apk upgrade --no-cache && apk add --no-cache mariadb mariadb-client

# Expose the default MariaDB port
EXPOSE  3306

CMD [ "mysqld", "--user=mysql", "--console" ]