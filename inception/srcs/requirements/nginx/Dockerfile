FROM debian:buster
ARG nginx_inception
COPY conf/*   tmp/
EXPOSE 8080:80
# RUN ["apt-get", "-y", "update"]
# RUN ["apt-get", "-y", "upgrade"]
# RUN ["apt-get", "-y", "install", "nginx"]
# RUN ["mkdir", "-p", "/etc/nginx/sites-enabled/"]
# CMD ["nginx", "-g", "daemon off;"]
ENTRYPOINT ["bash", "./tmp/init_nginx.sh" ]
