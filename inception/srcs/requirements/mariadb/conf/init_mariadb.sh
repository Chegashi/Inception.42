apt install -y mariadb-server mariadb-client
service mysql start
sleep 2
mysql < /tmp/init_sql.sql
mysql --user=root --password=@1234567890 mochegri < /tmp/mochegri.sql