#!/bin/bash

mkdir -p /var/www/html

cd /var/www/html

rm -rf *

# download the wp-cli.phar file
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

# make the wp-cli.phar file executable
chmod +x wp-cli.phar

mv wp-cli.phar /usr/local/bin/wp

# download WordPress
wp core download --allow-root

mv wp-config-sample.php wp-config.php

# change some lines in wp-config.php to connect with the database

sed -i -r "s/database_name_here/$DB_NAME/1" wp-config.php

sed -i -r "s/username_here/$DB_USER/1" wp-config.php

sed -i -r "s/password_here/$DB_PASSWORD/1" wp-config.php

sed -i -r "s/localhost/mariadb/1" wp-config.php

sed -i "s/listen = 127.0.0.1:9000/listen = 0.0.0.0:9000/1" /etc/php7/php-fpm.d/www.conf

wp core install --url=$DOMAIN_NAME --title=$WP_TITLE --admin_user=$WP_ADMIN_USER --admin_password=$WP_ADMIN_PW --allow-root

wp user create $WP_USER $WP_EMAIL --role=author --user_pass=$WP_PW --allow-root

mkdir -p /run/php

/usr/sbin/php-fpm7
