create table if not exists Исполнители (
	Идентификатор serial primary key,
	Имя varchar(50) not null
);

create table if not exists Жанры (
	Идентификатор serial primary key,
	Название varchar(50) not null,
	Идентификатор_исполнителя integer references Исполнители(Идентификатор)
);

create table if not exists Жанры_Исполнители (
	Идентификатор_жанра integer references Жанры(Идентификатор),
	Идентификатор_исполнителя integer references Исполнители(Идентификатор),
	constraint pk1 primary key (Идентификатор_жанра, Идентификатор_исполнителя)
);

create table if not exists Альбомы (
	Идентификатор serial primary key,
	Название varchar(50) not null,
	Год_выпуска integer not null, check (Год_выпуска >= 1900 and Год_выпуска <= 2022),
	Идентификатор_альбома integer references Исполнители(Идентификатор)
);

create table if not exists Альбомы_Исполнители (
	Идентификатор_альбома integer references Альбомы(Идентификатор),
	Идентификатор_исполнителя integer references Исполнители(Идентификатор),
	constraint pk2 primary key (Идентификатор_альбома, Идентификатор_исполнителя)
);	

create table if not exists Треки (
	Идентификатор serial primary key,
	Название varchar(50) not null,
	Длительность integer not null, check (Длительность > 0 and Длительность <= 600),
	Идентификатор_альбома integer references Альбомы(Идентификатор)
);

create table if not exists Сборники (
	Идентификатор serial primary key,
	Название varchar(50) not null,
	Год_выпуска integer not null, check (Год_выпуска >= 1900 and Год_выпуска <= 2022)
);

create table if not exists Сборники_Треки (
	Идентификатор_сборника integer references Сборники(Идентификатор),
	Идентификатор_трека integer references Треки(Идентификатор),
	constraint pk3 primary key (Идентификатор_сборника, Идентификатор_трека)
);	

