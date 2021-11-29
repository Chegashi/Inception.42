FROM debian:buster
ARG TAG="mariadb"
COPY conf/*  /tmp/
EXPOSE 3306

ARG MYSQL_ROOT_PASSWORD
ENV MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD}

ARG MYSQL_USER
ENV MYSQL_USER=${MYSQL_USER}

ARG DB_NAME
ENV DB_NAME=${DB_NAME}

ARG MYSQL_PASSWORD
ENV MYSQL_PASSWORD=${MYSQL_PASSWORD}

ARG MYSQL_DATABASE
ENV MYSQL_DATABASE=${MYSQL_DATABASE}

ARG WP_NAME
ENV WP_NAME=${WP_NAME}

ARG DB_PASSWORD
ENV DB_PASSWORD=db_user_password

ARG DB_HOST
ENV DB_HOST=localhost


RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt install -y mariadb-server mariadb-client
RUN service mysql start


ENTRYPOINT sh /tmp/init_mariadb.sh
# RUN mysql --user=root --password=@1234567890 mochegri < /tmp/mochegri.sql

# ENTRYPOINT bash /tmp/init_mariadb.sh
# ENTRYPOINT bash /tmp/init_mariadb.sh
CMD mysqld
