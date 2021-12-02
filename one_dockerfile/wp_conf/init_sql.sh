service mysql start
mysql -u root -e "CREATE USER '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';"
mysql -u root -e "CREATE DATABASE ${DB_NAME};"
mysql -u root -e "USE ${DB_NAME}; GRANT ALL PRIVILEGES ON * TO '${MYSQL_USER}'@'%' WITH GRANT OPTION; FLUSH PRIVILEGES;"
mysql -u root ${DB_NAME} < /tmp/mochegri.sql
mysql -u root -e "GRANT ALL PRIVILEGES ON ${WP_NAME}.* TO 'root'@'${DB_HOST}';FLUSH PRIVILEGES;"
mysql -u root -e "update mysql.user set plugin = 'mysql_native_password' where user='root';"
mysql -u root -e "UPDATE mysql.user SET Password=PASSWORD('@1234567890') WHERE User='root';"
mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}'; FLUSH PRIVILEGES;"
