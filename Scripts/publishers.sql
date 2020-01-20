
use greenbook; 

-- publishers 

drop table if exists publishers; 

create table publishers(
pub_id integer primary key auto_increment, 
pub_name varchar(20),
city varchar(20),
country varchar(20), 
book_id integer references books(book_id)); 




create table publishers(
pub_id integer primary key auto_increment,
pub_name varchar(20),
city varchar(20),
country varchar(20),
book_id integer references books(book_id));

drop table publishers;

SELECT * FROM greenbook.publishers;

insert into publishers(pub_name, city, country)
values ('Feltrinelli', 'Milano', 'IT');
insert into publishers(pub_name, city, country)
values ('Giunti', 'Roma', 'IT');
insert into publishers(pub_name, city, country)
values ('Mondadori', 'Milano', 'IT');
commit;

