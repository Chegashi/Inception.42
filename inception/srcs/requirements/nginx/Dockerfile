FROM debian:buster

COPY conf  /
COPY tools /
EXPOSE 443 80
RUN ["apt-get", "-y", "update"]
RUN ["apt-get", "-y", "upgrade"]
RUN ["apt-get", "-y", "install", "nginx"]
ENTRYPOINT [ "bash", "init_nginx.sh"]
