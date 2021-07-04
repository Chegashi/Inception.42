FROM debian:buster
ARG TAG="wordpress"
COPY conf /conf
COPY tools /tools
WORKDIR /var/www/
RUN ["apt-get", "-y", "update"]
RUN ["apt-get", "-y", "upgrade"]
RUN ["apt", "install", "-y" ,"php-cli", "php-cgi", "php-common", "php-fpm", "php-pear", "php-curl", "php-intl", "php-soap", "php-xmlrpc", "php-mbstring", "php-zip", "php-net-socket", "php-gd", "php-xml-util", "php-gettext", "php-mysql", "php-bcmath", "wget", "-y"]
RUN ["service", "php7.3-fpm", "start"]
RUN ["wget", "https://wordpress.org/latest.tar.gz", "-P", "/tmp"]
RUN ["tar", "-xzf", "/tmp/latest.tar.gz"]
RUN ["service", "php7.3-fpm", "restart"]    