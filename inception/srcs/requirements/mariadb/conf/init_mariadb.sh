apt install -y php-{mbstring,zip,gd,xml,pear,gettext,cgi}
wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-english.tar.gz
mkdir /var/www/html/phpmyadmin
tar xzf phpMyAdmin-4.9.0.1-english.tar.gz --strip-components=1 -C /var/www/html/phpmyadmin

apt install -y mariadb-server mariadb-client
service mysql start