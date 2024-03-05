create table if not exists sotrudnik (
id serial primary key,
name varchar(30) not null,
department varchar(50) not null);

create table if not exists chef (
id serial primary key,
sotrudnik_id integer not null references sotrudnik(id));

create table if not exists common_sotrudnik (
common_id serial primary key,
sotrudnik_id integer not null references sotrudnik(id),
chef_id integer not null references chef(id));

