openssl req -nodes -x509 -newkey rsa:4096 -keyout key.pem -out cert.pem -days 365 << EOF
MA
MARRAKECH
BENGERIR
1337
UM6P
42NETWORKS
mochegri@student1337.ma
EOF
mv cert.pem /etc/ssl/certs/
mv key.pem /etc/ssl/private/
rm -rf /var/www/html/*