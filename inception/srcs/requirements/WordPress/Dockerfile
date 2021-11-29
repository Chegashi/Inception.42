FROM debian:buster
ARG TAG="wordpress"
COPY conf/* /tmp/

RUN mkdir -p /var/www/html/mochegri
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install wget
RUN apt install -y php-fpm php-mysql php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip
RUN service php7.3-fpm start
RUN wget https://wordpress.org/latest.tar.gz -P /tmp
RUN tar xzf /tmp/latest.tar.gz --strip-components=1 -C /var/www/html/mochegri
# RUN cp /var/www/html/mochegri/wp-config{-sample,}.php
RUN cp /tmp/wp-config.php  /var/www/html/mochegri/wp-config.php
RUN chown -R www-data:www-data /var/www/html/mochegri
RUN ln -s /var/www/html/mochegri/index.php /var/www/html/.
# ENTRYPOINT [ "bash", "/tmp/init_wp.sh" ]
 