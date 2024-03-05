CREATE table if not exists genres (
Genres_ID serial primary key, 
name varchar(60) not null);

create table if not exists singers (
Singers_ID serial primary key,
nickname varchar(40) not null);

create table if not exists albums(
Album_ID serial primary key,
name_album varchar(60) not null,
Date_relise date not null);

create table if not exists songs(
Songs_ID serial primary key,
name_track varchar(50) not null,
time_track time not null,
album_id integer not null references albums(Album_ID));

create table if not exists collection (
Collection_ID serial primary key,
name_collection varchar(50) not null,
Date_relise date not null);

create table if not exists genresSingers (
id serial primary key,
genres_id integer not null references genres(Genres_ID),
singers_id integer not null references singers(Singers_ID));

create table if not exists singers_Albums (
id serial primary key,
singer_id integer not null references singers(Singers_ID),
album_id integer not null references albums(Album_ID));

create table if not exists songsCollection (
id serial primary key,
collection_id integer not null references collection(Collection_ID),
Songs_id integer not null references songs(Songs_ID));



