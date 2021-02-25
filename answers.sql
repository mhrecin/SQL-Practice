-- Paste your answers for each question in the appropriate spot below. (Keep the number headings)
-- #1
create table movies(
	id serial primary key,
	genre varchar(45),
	title varchar(30),
	releaseYear smallint
)

-- #2
insert into movies (genre, title, releaseYear) values ('Comedy', 'Mary Poppins', 1964);
insert into movies (genre, title, releaseYear) values ('Drama', 'Saving Mr. Banks', 2013);
insert into movies (genre, title, releaseYear) values ('Action', 'Big Hero 6', 2014);
insert into movies (genre, title, releaseYear) values ('Action', 'The Last Dragon', 1985);
insert into movies (genre, title, releaseYear) values ('Documentary', 'Superheroes', 2011);

-- #3
select * from movies where genre = 'Action'

-- #4
select * from movies where title like 'S%' and releaseYear > 2012

-- #5
update movies set genre = 'Comedy' where id = 4

-- #6
delete from movies where id = 5

-- #7
create table cast_members (
	id serial primary key,
	name varchar(40),
	role varchar(40),
	movie_id int
)

-- #8
insert into cast_members (movie_id, name, role) values (1, 'Julie Andrews', 'Mary Poppins');
insert into cast_members (movie_id, name, role) values (2, 'Emma Thompson', 'P.L. Travers');
insert into cast_members (movie_id, name, role) values (2, 'Tom Hanks', 'Walt Disney');

-- #9
select cm.name, cm.role, m.title from cast_members cm
join movies m on m.id = cm.movie_id

-- #10
select cm.name, cm.role, m.title from cast_members cm
join movies m on m.id = cm.movie_id 
where m.releaseYear > 2000
