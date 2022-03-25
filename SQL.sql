create table if not exists Artists(
	id serial primary key,
	name varchar(50) not null
);

create table if not exists Genres(
	id serial primary key,
	name varchar(50) not null
);

create table if not exists Genres_Artists(
	genre_id integer references Genres(id),
	artist_id integer references Artists(id),
	constraint pk1 primary key (genre_id, artist_id)
);

create table if not exists Albums(
	id serial primary key,
	name varchar(50) not null,
	release_year integer not null, check (release_year >= 1900 and release_year <= 2022)
);

create table if not exists Albums_Artists(
	album_id integer references Albums(id),
	artist_id integer references Artists(id),
	constraint pk2 primary key (album_id, artist_id)
);	

create table if not exists Tracks(
	id serial primary key,
	name varchar(50) not null,
	length integer not null, check (length > 0 and length <= 600),
	album_id integer references Albums(id)
);

create table if not exists Collections(
	id serial primary key,
	name varchar(50) not null,
	release_year integer not null, check (release_year >= 1900 and release_year <= 2022)
);

create table if not exists Collections_Tracks(
	collection_id integer references Collections(id),
	track_id integer references Tracks(id),
	constraint pk3 primary key (collection_id, track_id)
);	

