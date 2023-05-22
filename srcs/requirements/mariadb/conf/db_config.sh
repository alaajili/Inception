#!/bin/bash
# export DB_NAME=db
# export DB_USER=mamella
# export DB_PASSWORD=mamella00


echo "CREATE DATABASE IF NOT EXISTS $DB_NAME ;" > db1.sql
echo "CREATE USER IF NOT EXISTS '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD' ;" >> db1.sql
echo "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%' ;" >> db1.sql
echo "FLUSH PRIVILEGES;" >> db1.sql

mysqld --user=mysql --init-file=/tmp/db1.sql
