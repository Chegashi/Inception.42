FROM debian:buster
ARG TAG="nginx"
COPY conf/*  /conf
COPY tools/* /tools
EXPOSE 80
RUN ["apt-get", "-y", "update"]
RUN ["apt-get", "-y", "upgrade"]
RUN ["apt-get", "-y", "install", "nginx"]
CMD ["nginx", "-g", "daemon off;"]    
