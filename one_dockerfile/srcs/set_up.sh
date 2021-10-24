#init
    apt-get -y update
    apt-get -y upgrade

#nginx
    apt-get -y install nginx
    cp /config/default_2 /etc/nginx/sites-enabled/default
    service nginx start

#wp_php

    apt update
    apt upgrade
    apt install -y wget
    apt install -y php-fpm php-mysql php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip
    cp /config/mochegri /etc/nginx/sites-available/mochgeri
    ln -s /etc/nginx/sites-available/mochegri /etc/nginx/sites-enabled/
    service nginx restart
    # cp /config/default /etc/nginx/sites-enabled/default
    wget https://wordpress.org/latest.tar.gz -P /tmp
    mkdir /var/www/html/mochegri
    tar xzf /tmp/latest.tar.gz --strip-components=1 -C /var/www/html/mochegri
    cp /var/www/html/mochegri/wp-config{-sample,}.php
    cp /config/mochegri /etc/nginx/sites-available/mochegri
    cp /config/wp-config.php /var/www/html/mochegri/wp-config.php 
    chown -R www-data:www-data /var/www/html/mochegri
    service php7.3-fpm start
    service  php7.3-fpm restart

#db 
    # apt install -y mariadb-server mariadb-client
    # service mysql start
    # mysql < /config/init_sql.sql 

# #phpmyadmin
#     apt install -y php-{mbstring,zip,gd,xml,pear,gettext,cgi}
#     wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-english.tar.gz
#     mkdir /var/www/html/phpmyadmin
#     tar xzf phpMyAdmin-4.9.0.1-english.tar.gz --strip-components=1 -C /var/www/html/phpmyadmin
#     cp config/config.inc.php /var/www/html/phpmyadmin/config.inc.php
#     chmod 660 /var/www/html/phpmyadmin/config.inc.php
#     chown -R www-data:www-data /var/www/html/phpmyadmin



    # mysql --user=root --password=123 mochegri < config/mochegri.sql
#Ssl
# mkdir /etc/nginx/ssl
# cp  tmp/kifarunix-demo.pem /etc/nginx/ssl/kifarunix-demo.pem && cp tmp/kifarunix-demo.key /etc/nginx/ssl/kifarunix-demo.key
# service nginx restart
# cat