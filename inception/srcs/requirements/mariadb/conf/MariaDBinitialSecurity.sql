ALTER USER root@localhost IDENTIFIED VIA mysql_native_password;
SET PASSWORD = PASSWORD('123');
flush privileges;

create database mochegri;
create user demouser@localhost identified by '123';
grant all privileges on mochegri.* to demouser@localhost;
flush privileges;


create database wordpress;
create database phpmyadmin;
GRANT ALL PRIVILEGES ON wordpress.* TO 'root'@'localhost';
FLUSH PRIVILEGES;
update mysql.user set plugin = 'mysql_native_password' where user='root';
exit