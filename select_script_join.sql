-- #1
select name genre, count(name) num_of_artists
from genres_artists ga
join genres g on g.id = ga.genre_id
group by name
order by name

-- #2
select count(*) num_of_tracks
from tracks t
join albums a on a.id = t.album_id  
where a.release_year between 2019 and 2020

-- #3
select a.name album_name, avg(length) avg_track_length
from tracks t join albums a on t.album_id = a.id 
group by a.name
order by a.name

-- #4
select a.name artist_name
from artists a
join albums_artists aa on aa.artist_id = a.id 
join albums al on al.id = aa.album_id
where al.release_year != 2020
group by a.name
order by a.name

-- #5
select c.name collection_name
from collections c
join collections_tracks ct on ct.collection_id = c.id 
join tracks t on t.id = ct.track_id 
join albums a on a.id = t.album_id 
join albums_artists aa on aa.album_id = a.id 
join artists ar on ar.id = aa.artist_id 
where ar.name = 'Artist 1'

-- #6
select a.name album_name, count(ga.artist_id) num_of_genres
from albums a
join albums_artists aa on aa.album_id = a.id  
join artists ar on ar.id = aa.artist_id
join genres_artists ga on ga.artist_id = ar.id 
join genres g on g.id = ga.genre_id 
group by a.name
having count(ga.artist_id) > 1
order by a.name

-- #7
select t.name track_name
from tracks t
left join collections_tracks ct on ct.track_id = t.id
where ct.track_id is null
order by t.name

-- #8
select a.name artist_name
from artists a
join albums_artists aa on aa.artist_id = a.id 
join albums al on al.id = aa.album_id 
join tracks t on t.album_id = al.id 
where t.length = (select min(length) from tracks)
group by a.name

-- #9
select a.name album_name, count(*) num_of_tracks 
from albums a
join tracks t on t.album_id = a.id 
group by a.name
having count(*) = (
select count(*)
from albums a
join tracks t on t.album_id = a.id 
group by a.name
order by count(*)
limit 1
)
order by a.name
