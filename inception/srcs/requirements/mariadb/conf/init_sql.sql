ALTER USER root@localhost IDENTIFIED VIA mysql_native_password;
SET PASSWORD = PASSWORD('@1234567890');
flush privileges;
create database mochegri;
create user mochegri_u@localhost identified by '123456@';
grant all privileges on mochegri.* to mochegri_u@localhost;
flush privileges;


-- create database wordpress;
create database phpmyadmin;
GRANT ALL PRIVILEGES ON wordpress.* TO 'root'@'localhost';
FLUSH PRIVILEGES;
update mysql.user set plugin = 'mysql_native_password' where user='root';
exit
