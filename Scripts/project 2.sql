

create table books(
book_id integer primary key auto_increment,
title varchar(50),
author_id integer references authors(author_id),
genre_id integer references genres(genre_id), 
pub_id integer references publishers(pub_id)); 

commit; 