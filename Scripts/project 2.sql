use greenbook; 

-- publishers 

drop table if exists publishers; 

create table publishers(
pub_id integer primary key auto_increment, 
pub_name varchar(20),
city varchar(20),
country varchar(20), 
book_id integer references books(book_id)); 


insert into publishers(pub_name, city, country)
values ('Feltrinelli', 'Milano', 'IT');
insert into publishers(pub_name, city, country)
values ('Giunti', 'Roma', 'IT');
insert into publishers(pub_name, city, country)
values ('Mondadori', 'Milano', 'IT');
commit;

-- books

drop table if exists books; 

create table books(
book_id integer primary key auto_increment,
title varchar(50),
author_id integer references authors(author_id),
genre_id integer references genres(genre_id), 
pub_id integer references publishers(pub_id)); 


insert into books(title)
values ('Addio alle armi');
insert into books(title)
values ('Game');
insert into books(title)
values ('I love Shopping');
insert into books(title)
values ('Dieci piccoli indiani');
insert into books(title)
values ('Io Robot');

commit; 

-- authors

drop table if exists authors; 

create table authors(
author_id integer primary key auto_increment,
last_name varchar(20),
first_name varchar(20),
nationality varchar(20),
client_id integer references clients(client_id));

insert into authors(last_name, first_name, nationality)
values ('Baricco', 'Alessandro', 'IT');
insert into authors(last_name, first_name, nationality)
values ('Hemingway', 'Ernest', 'US');
insert into authors(last_name, first_name, nationality)
values ('Asimov', 'Isaac', 'RU');
insert into authors(last_name, first_name, nationality)
values ('Christie', 'Agatha', 'UK');
insert into authors(last_name, first_name, nationality)
values ('Kinsella', 'Sophie', 'UK');

commit;

-- clients
drop table if exists clients; 

create table  clients (
client_id integer primary key auto_increment,
first_name varchar(30),
last_name varchar(30),
author_id integer references authors(author_id),
genre_id integer references genres(genre_id)
);


insert into clients( first_name, last_name)
values('Chiara', 'Boschiero');
insert into clients( first_name, last_name)
values('Chiara', 'Arcidiacono');
insert into clients( first_name, last_name)
values('Claudia', 'Cadalora');
insert into clients( first_name, last_name)
values('Rossella', 'Musolino');
commit;

-- genres

drop table if exists genres; 

create table genres (
genre_id integer primary key auto_increment,
genre_name varchar (20),
client_id integer references clients(client_id));


insert into genres(genre_name)
values ('saggio');
insert into genres(genre_name)
values('romanzo');
insert into genres(genre_name)
values('giallo');
insert into genres(genre_name)
values('storico');
insert into genres(genre_name)
values('fantascienza');
commit;
