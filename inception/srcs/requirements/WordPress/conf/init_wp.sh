adduser mochegri
useradd -m -p intra mochegri
chown -R blog:www-data /var/www/mochegri
service php7.3-fpm  restart
