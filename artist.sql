-- Table - artist

-- 1. Create a file called artist.sql and write out the code for the following problems:

-- 2. Add 3 new artists to the artist table. (It’s already created)

INSERT INTO artist (name)
VALUES ('The Beatles');

INSERT INTO artist (name)
VALUES ('Frank Sinatra');

INSERT INTO artist (name)
VALUES ('Garth Brooks');

-- 3. Select 10 artists in reverse alphabetical order.

select * from artist
order by name DESC LIMIT 10;

-- 4. Select 5 artists in alphabetical order.

select * from artist
order by name ASC LIMIT 5;

-- 5. Select all artists that start with the word ‘Black’.

select * from artist
where name LIKE 'Black%';

-- 6. Select all artists that contain the word ‘Black’.

select * from artist
where name LIKE '%Black%';