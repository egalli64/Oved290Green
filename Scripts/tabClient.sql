-- tabella clients
create table  clients (
client_id integer primary key auto_increment,
first_name varchar(30),
last_name varchar(30),
author_id integer references authors(author_id),
genre_id integer references genres(genre_id)
);
commit;