ALTER USER root@localhost IDENTIFIED VIA mysql_native_password;
    SET PASSWORD = PASSWORD('root_password');
    flush privileges;

create database mochegri;
create user mochegri_u@localhost identified by 'database_password';
grant all privileges on mochegri.* to mochegri_u@localhost;
flush privileges;


-- create database wordpress;

-- create database phpmyadmin;

-- GRANT ALL PRIVILEGES ON wordpress.* TO 'root'@'localhost';
-- FLUSH PRIVILEGES;
-- update mysql.user set plugin = 'mysql_native_password' where user='root';


