FROM debian:buster
ARG TAG="nginx"
EXPOSE 80
COPY conf/*   tmp/
RUN ["apt-get", "-y", "update"]
RUN ["apt-get", "-y", "upgrade"]
RUN ["apt-get", "-y", "install", "nginx"]
ENTRYPOINT ["bash", "./tmp/init_nginx.sh"]
