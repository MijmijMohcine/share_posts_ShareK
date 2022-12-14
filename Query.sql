create database JDBC;
use JDBC;
create table users(id int(6) unsigned primary key auto_increment, firstname varchar(50) not null, secondname varchar(50) not null, username varchar(50) not null, email varchar(50), password varchar(30) not null);
create table articles(id_user int(6) unsigned, title varchar(100) not null, article text not null, date datetime default CURRENT_TIMESTAMP, tags text);
alter table articles add foreign key(id_user) references users(id);
desc users;
desc articles;