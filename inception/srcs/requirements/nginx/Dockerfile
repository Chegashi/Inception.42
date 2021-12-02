FROM debian:buster
EXPOSE 443
COPY ./tools/ssh.sh .
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y nginx
RUN  apt-get install -y openssl
RUN sh ssh.sh
COPY ./conf/default /etc/nginx/sites-available/
ENTRYPOINT nginx -g 'daemon off;'