#!/bin/bash

echo "CREATE DATABASE IF NOT EXISTS db ;" > db1.sql
echo "CREATE USER IF NOT EXISTS 'mamella'@'%' IDENTIFIED BY '1234' ;" >> db1.sql
echo "FLUSH PRIVILEGES;" >> db1.sql

mysqld --user=mysql --init-file=/tmp/db1.sql
