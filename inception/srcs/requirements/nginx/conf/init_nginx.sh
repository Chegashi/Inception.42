apt-get -y update
apt-get -y upgrade
apt-get -y install nginx
cp /tmp/default /etc/nginx/sites-enabled/default
cp /tmp/mochegri /etc/nginx/sites-available/mochegri
ln -s /etc/nginx/sites-available/mochegri /etc/nginx/sites-enabled/
sleep 1
service nginx start
# nginx -g 'daemon off;'
cat
