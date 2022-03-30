insert into artists(name) values('Artist 1');
insert into artists(name) values('Artist 2');
insert into artists(name) values('Artist 3');
insert into artists(name) values('Artist 4');
insert into artists(name) values('Artist 5');
insert into artists(name) values('Artist 6');
insert into artists(name) values('Artist 7');
insert into artists(name) values('Artist 8');

insert into genres(name) values('Genre 1');
insert into genres(name) values('Genre 2');
insert into genres(name) values('Genre 3');
insert into genres(name) values('Genre 4');
insert into genres(name) values('Genre 5');

insert into genres_artists(genre_id,artist_id) values(1,1);
insert into genres_artists(genre_id,artist_id) values(1,2);
insert into genres_artists(genre_id,artist_id) values(1,3);
insert into genres_artists(genre_id,artist_id) values(1,4);
insert into genres_artists(genre_id,artist_id) values(2,3);
insert into genres_artists(genre_id,artist_id) values(2,4);
insert into genres_artists(genre_id,artist_id) values(3,5);
insert into genres_artists(genre_id,artist_id) values(3,6);
insert into genres_artists(genre_id,artist_id) values(4,7);
insert into genres_artists(genre_id,artist_id) values(4,8);

insert into albums(name,release_year) values('Album 1',2017);
insert into albums(name,release_year) values('Album 2',2020);
insert into albums(name,release_year) values('Album 3',2019);
insert into albums(name,release_year) values('Album 4',2018);
insert into albums(name,release_year) values('Album 5',2017);
insert into albums(name,release_year) values('Album 6',2021);
insert into albums(name,release_year) values('Album 7',2018);
insert into albums(name,release_year) values('Album 8',2018);

insert into albums_artists(album_id,artist_id) values(1,1);
insert into albums_artists(album_id,artist_id) values(1,2);
insert into albums_artists(album_id,artist_id) values(2,3);
insert into albums_artists(album_id,artist_id) values(2,4);
insert into albums_artists(album_id,artist_id) values(3,3);
insert into albums_artists(album_id,artist_id) values(4,4);
insert into albums_artists(album_id,artist_id) values(5,5);
insert into albums_artists(album_id,artist_id) values(6,6);
insert into albums_artists(album_id,artist_id) values(7,7);
insert into albums_artists(album_id,artist_id) values(8,8);

insert into tracks(name,length,album_id) values('Track 1',100,1);
insert into tracks(name,length,album_id) values('Track 2',200,5);
insert into tracks(name,length,album_id) values('Track 3',100,2);
insert into tracks(name,length,album_id) values('My song',300,2);
insert into tracks(name,length,album_id) values('Track 5',100,4);
insert into tracks(name,length,album_id) values('Track 6',100,5);
insert into tracks(name,length,album_id) values('Track 7',100,6);
insert into tracks(name,length,album_id) values('My tune',100,6);
insert into tracks(name,length,album_id) values('Track 9',90,7);
insert into tracks(name,length,album_id) values('Track 10',150,8);
insert into tracks(name,length,album_id) values('Мой трек',220,3);
insert into tracks(name,length,album_id) values('Track 12',100,3);
insert into tracks(name,length,album_id) values('Track 13',100,4);
insert into tracks(name,length,album_id) values('Track 14',250,8);
insert into tracks(name,length,album_id) values('Track 15',100,2);

insert into collections(name,release_year) values('Collection 1',2018);
insert into collections(name,release_year) values('Collection 2',2019);
insert into collections(name,release_year) values('Collection 3',2020);
insert into collections(name,release_year) values('Collection 4',2020);
insert into collections(name,release_year) values('Collection 5',2017);
insert into collections(name,release_year) values('Collection 6',2018);
insert into collections(name,release_year) values('Collection 7',2016);
insert into collections(name,release_year) values('Collection 8',2021);

insert into collections_tracks(track_id,collection_id) values(1,1);
insert into collections_tracks(track_id,collection_id) values(2,2);
insert into collections_tracks(track_id,collection_id) values(3,3);
insert into collections_tracks(track_id,collection_id) values(4,4);
insert into collections_tracks(track_id,collection_id) values(1,5);
insert into collections_tracks(track_id,collection_id) values(2,6);
insert into collections_tracks(track_id,collection_id) values(3,7);
insert into collections_tracks(track_id,collection_id) values(4,8);