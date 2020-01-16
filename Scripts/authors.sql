create table authors(
author_id integer primary key auto_increment,
last_name varchar(20),
first_name varchar(20),
nationality varchar(20),
client_id integer references clients(client_id));
commit;
