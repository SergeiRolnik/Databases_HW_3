-- #1
select name,release_year
from albums
where release_year = 2018;

-- #2
select name,length
from tracks
order by length desc
limit 1;

-- #3
select name
from tracks
where length >= 210;

-- #4
select name
from collections
where release_year between 2018 and 2020;

-- #5
select name
from artists
where name not like '%% %%';

-- #6
select name
from tracks
where name ilike '%%мой%%' or name ilike '%%my%%';