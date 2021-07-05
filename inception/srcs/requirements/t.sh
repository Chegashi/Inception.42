apt-get -y update
apt-get -y upgrade

# mariadb
    apt install -y mariadb-server mariadb-client
    service mysql start
    mysql < tmp/wp_init.sql

# #nginx
    apt-get -y install nginx
    service nginx start
    cp /tmp/mochegri /etc/nginx/sites-available/mochegri
    ln -s /etc/nginx/sites-available/mochegri /etc/nginx/sites-enabled/
    service  nginx restart

# wordpress_php
apt install -y  php-cgi php-common php-fpm php-pear php-mbstring php-zip php-net-socket php-gd php-xml-util php-gettext php-mysql php-bcmath  -y
cp tmp/php.ini /etc/php/7.3/fpm/php.ini
/etc/init.d/php7.3-fpm start
apt install wget curl -y
wget https://wordpress.org/latest.tar.gz -P /tmp
mkdir /var/www/html/mochegri
tar xzf /tmp/latest.tar.gz --strip-components=1 -C /var/www/html/mochegri
cp /var/www/html/mochegri/wp-config{-sample,}.php
service  nginx restart
cp /tmp/wp-config.php /var/www/html/mochegri/wp-config.php
chown -R www-data:www-data /var/www/html/mochegri

# apt install -y php-fpm php-mysql php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip
# cp tmp/default /etc/nginx/sites-enabled/default
# service  php7.3-fpm restart

# #phpmyadmin
# apt install -y php-{mbstring,zip,gd,xml,pear,gettext,cgi}
# wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-english.tar.gz
# mkdir /var/www/html/phpmyadmin
# tar xzf phpMyAdmin-4.9.0.1-english.tar.gz --strip-components=1 -C /var/www/html/phpmyadmin
# cp tmp/config.inc.php /var/www/html/phpmyadmin/config.inc.php
# chmod 660 /var/www/html/phpmyadmin/config.inc.php
# chown -R www-data:www-data /var/www/html/phpmyadmin
# #wp
# apt update
# apt upgrade
# cp tmp/kifarunix-demo /etc/nginx/sites-available/kifarunix-demo
# ln -s /etc/nginx/sites-available/kifarunix-demo /etc/nginx/sites-enabled/
# wget https://wordpress.org/latest.tar.gz -P /tmp
# mkdir /var/www/html/kifarunix-demo
# tar xzf /tmp/latest.tar.gz --strip-components=1 -C /var/www/html/kifarunix-demo
# cp /var/www/html/kifarunix-demo/wp-config{-sample,}.php
# cp tmp/wp-config.php  /var/www/html/kifarunix-demo/wp-config.php
# chown -R www-data:www-data /var/www/html/kifarunix-demo
# mysql < tmp/wp2.sql 

# mysql --user=root --password=123 kifarunixdemo < tmp/kifarunixdemo.sql
# #Ssl
# mkdir /etc/nginx/ssl
# cp  tmp/kifarunix-demo.pem /etc/nginx/ssl/kifarunix-demo.pem && cp tmp/kifarunix-demo.key /etc/nginx/ssl/kifarunix-demo.key
# service nginx restart
# cat