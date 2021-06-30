FROM debian:buster

COPY conf/* /conf
COPY tools/* /tools
RUN ["apt-get", "-y", "update"]
RUN ["apt-get", "-y", "upgrade"]
RUN ["apt", "install", "-y", "php-fpm", "php-mysql", "php-curl", "php-gd", "php-intl", "php-mbstring", "php-soap", "php-xml", "php-xmlrpc", "php-zip"]
RUN ["service", "php7.3-fpm", "start"]
RUN ["wget", "https://wordpress.org/latest.tar.gz", "-P", "/tmp"]
# RUN ["tar", "xzf", "/tmp/latest.tar.gz", "--strip-components=1", "-C", "/var/www/html/kifarunix-demo"]
# RUN ["apt", "install", "-y", "php-{mbstring,zip,gd,xml,pear,gettext,cgi}"]
# RUN ["wget", "https://wordpress.org/latest.tar.gz", "-P", "/tmp"]

