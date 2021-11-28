mkdir -p /var/www/html/mochegri
apt-get -y update
apt-get -y upgrade
apt-get -y install wget
apt install -y php-fpm php-mysql php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip
service php7.3-fpm start
wget https://wordpress.org/latest.tar.gz -P /tmp
tar xzf /tmp/latest.tar.gz --strip-components=1 -C /var/www/html/mochegri
cp /var/www/html/mochegri/wp-config{-sample,}.php
cp /tmp/wp-config.php  /var/www/html/mochegri/wp-config.php
chown -R www-data:www-data /var/www/html/mochegri
ln -s /var/www/html/mochegri/index.php /var/www/html/.