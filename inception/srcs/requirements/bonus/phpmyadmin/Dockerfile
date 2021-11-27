FROM debian:buster
ARG TAG="phpmyadmin"
COPY conf/* /tmp
# COPY tools /tools
# WORKDIR /var/www/

RUN apt install -y php-{mbstring,zip,gd,xml,pear,gettext,cgi}
RUN wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-english.tar.gz
RUN mkdir /var/www/html/phpmyadmin
RUN tar xzf phpMyAdmin-4.9.0.1-english.tar.gz --strip-components=1 -C /var/www/html/phpmyadmin
# RUN cp tmp/config.inc.php /var/www/html/phpmyadmin/config.inc.php
# RUN chmod 660 /var/www/html/phpmyadmin/config.inc.php
RUN chown -R www-data:www-data /var/www/html/phpmyadmin
