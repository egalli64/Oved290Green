create table genres (
genre_id integer primary key auto_increment,
genre_name varchar (20),
client_id integer references clients(client_id));

commit;
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
