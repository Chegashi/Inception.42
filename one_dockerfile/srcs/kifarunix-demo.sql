create database kifarunixdemo;
create user demouser@localhost identified by 'Str0nGPassword';
grant all privileges on kifarunixdemo.* to demouser@localhost;
flush privileges;
quit