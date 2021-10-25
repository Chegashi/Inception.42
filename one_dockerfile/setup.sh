#nginx
    apt-get -y update
    apt-get -y upgrade
    apt-get -y install nginx vim
    # mkdir /etc/nginx/ssl
    # cp  /nginx_conf/mochegri.pem /etc/nginx/ssl/mochegri.pem && cp /nginx_conf/mochegri.key /etc/nginx/ssl/mochegri.key

#php
    apt-get -y update
    apt-get -y upgrade
    apt install -y php-fpm php-mysql php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip
    cp /nginx_conf/default /etc/nginx/sites-enabled/default
    service php7.3-fpm start
    service  php7.3-fpm restart

#db
    apt install -y mariadb-server mariadb-client    
    service mysql start

#wp
    apt update
    apt upgrade
    apt-get -y install wget
    cp /wp_conf/mochegri /etc/nginx/sites-available/mochegri
    ln -s /etc/nginx/sites-available/mochegri /etc/nginx/sites-enabled/
    wget https://wordpress.org/latest.tar.gz -P /tmp
    mkdir /var/www/html/mochegri
    tar xzf /tmp/latest.tar.gz --strip-components=1 -C /var/www/html/mochegri
    cp /var/www/html/mochegri/wp-config{-sample,}.php
    cp /wp_conf/wp-config.php  /var/www/html/mochegri/wp-config.php
    chown -R www-data:www-data /var/www/html/mochegri
    mysql < /wp_conf/init_sql.sql
    mysql --user=root --password=@1234567890 mochegri < /wp_conf/mochegri.sql
    ln -s /var/www/html/mochegri/index.php /var/www/html/.

#phpmyadmin
    apt install -y php-{mbstring,zip,gd,xml,pear,gettext,cgi}
    wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-english.tar.gz
    mkdir /var/www/html/phpmyadmin
    tar xzf phpMyAdmin-4.9.0.1-english.tar.gz --strip-components=1 -C /var/www/html/phpmyadmin
    cp tmp/config.inc.php /var/www/html/phpmyadmin/config.inc.php
    chmod 660 /var/www/html/phpmyadmin/config.inc.php
    chown -R www-data:www-data /var/www/html/phpmyadmin

#adminer
    mkdir /var/www/html/adminer/
    cd /var/www/html/adminer/
    wget https://github.com/vrana/adminer/releases/download/v4.7.3/adminer-4.7.3.php
    mv adminer-4.7.3.php adminer.php
    chmod 755 -R /var/www/html/Adminer/adminer.
    chown -R www-data:www-data /var/www/html/Adminer/

#ftp
    apt update
    apt install vsftpd
    ufw allow 20/tcp
    ufw allow 21/tcp
    cp /etc/vsftpd.conf /etc/vsftpd.conf.orig
    useradd -m -p 123 test 
    echo "test" | tee -a /etc/vsftpd.userlist
    service  vsftpd restart

#site
    apt-get install python3-pip libssl-dev libffi-dev python3-dev build-essential python3-setuptools -y 
    apt-get install python3-venv -y 
    pip3 install --upgrade pip
    mkdir ~/flaskapp
    cd ~/flaskapp
    pip install wheel
    pip install gunicorn flask

service nginx restart

# cat