SELECT * FROM greenbook.books;

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