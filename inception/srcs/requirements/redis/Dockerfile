FROM debian:buster
EXPOSE 80
COPY srcs/* tmp/
COPY conf/*   conf/
ENTRYPOINT [ "bash", "/conf/init_wp.sh" ]