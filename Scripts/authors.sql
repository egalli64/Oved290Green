select * from authors;
create table authors(
author_id integer primary key auto_increment,
last_name varchar(20),
first_name varchar(20),
nationality varchar(20),
client_id integer references clients(client_id));
commit;
drop table authors;
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