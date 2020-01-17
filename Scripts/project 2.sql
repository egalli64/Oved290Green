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


commit;

-- clients

-- genres