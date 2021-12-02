# export DOMAIN_NAME=mochegri.42.fr
# export DB_HOST=localhost
# export MYSQL_ROOT_PASSWORD=
# export MYSQL_USER=milmi
# export MYSQL_PASSWORD=milmipassword
# export WP_DB_NAME=wordp


export MYSQL_ROOT_PASSWORD=root_password_inception
export MYSQL_USER=mochegri
export DB_NAME=mochegri
export MYSQL_PASSWORD=user_password
export MYSQL_DATABASE=phpmyadmin
export WP_DB_NAME=wordpress
export DB_PASSWORD=db_user_password
export DB_HOST=localhost

# service mysql start
mysql -u root -e "CREATE USER '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';"
mysql -u root -e "CREATE DATABASE ${WP_DB_NAME};"
mysql -u root -e "USE ${WP_DB_NAME}; GRANT ALL PRIVILEGES ON * TO '${MYSQL_USER}'@'%' WITH GRANT OPTION; FLUSH PRIVILEGES;"
mysql -u root ${WP_DB_NAME} < /wordpress.sql
mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}'; FLUSH PRIVILEGES;"
