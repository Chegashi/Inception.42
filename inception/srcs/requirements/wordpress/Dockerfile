FROM debian:buster
EXPOSE 9000
COPY ./tools/entrypoint.sh /
COPY ./conf/php-fpm.conf /
RUN apt update
RUN apt install -y unzip wget php-fpm php-mysql
RUN apt upgrade -y
RUN mkdir -p /var/www/html
RUN wget https://wordpress.org/latest.zip
RUN unzip latest.zip
COPY conf/wp-config.php /wordpress
COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/
COPY ./conf/php-fpm.conf /etc/php/7.3/fpm/
ENTRYPOINT ["bash", "entrypoint.sh"]
