create table genres (
genre_id integer primary key auto_increment,
genre_name varchar (20),
client_id integer references clients(client_id));

commit;
