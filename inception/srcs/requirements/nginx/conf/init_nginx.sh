# apt-get -y update
# apt-get -y upgrade
# apt-get -y install nginx
# cp /tmp/default /etc/nginx/sites-enabled/default
# cp /tmp/mochegri /etc/nginx/sites-available/mochegri
# ln -s /etc/nginx/sites-available/mochegri /etc/nginx/sites-enabled/
# sleep 1
service nginx start
service nginx stop
nginx -g 'daemon off;'
# nginx
