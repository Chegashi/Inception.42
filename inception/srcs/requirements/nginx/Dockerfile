FROM debian:buster
ARG TAG="nginx"
COPY conf/*   tmp/
# RUN ["apt-get", "-y", "update"]
# RUN ["apt-get", "-y", "upgrade"]
# RUN ["apt-get", "-y", "install", "nginx"]
# RUN ["mkdir", "-p", "/etc/nginx/sites-enabled/"]
# CMD ["nginx", "-g", "daemon off;"]
ENTRYPOINT ["bash", "./tmp/init_nginx.sh" ]
