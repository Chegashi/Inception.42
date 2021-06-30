
FROM debian

COPY conf  /
COPY tools /
EXPOSE 80
RUN ["apt-get", "-y", "update"]
RUN ["apt-get", "-y", "upgrade"]
RUN ["apt-get", "-y", "install", "nginx"]
CMD ["nginx", "-g", "daemon off;"]    
