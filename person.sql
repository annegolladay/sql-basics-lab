-- Problems 1 and 2

CREATE TABLE person (
	person_id SERIAL PRIMARY KEY,
  name VARCHAR(25),
  age INTEGER,
  height INTEGER,
  city VARCHAR(20),
  favorite_color VARCHAR(15)
);

-- Problems 3 and 4

INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('Annie', 33, 160, 'Lehi', 'green');

INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('Kenny', 34, 182, 'Lehi', 'red');

INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('Emily', 20, 170, 'Mesa', 'purple');

INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('Natalie', 16, 168, 'Mesa', 'orange');

INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('Kristin', 40, 169, 'Mesa', 'blue');


-- Problem 5 - List all the people in the person table by height from tallest to shortest.

select * from person
order by height DESC;

-- Problem 6 - List all the people in the person table by height from shortest to tallest.

select * from person
order by height;

-- Problem 7 - List all the people in the person table by age from oldest to youngest.

select * from person
order by age DESC;

-- Problem 8 - 

select age from person
where age > 20;

-- Problem 9 - 

select age from person
where age = 18;

-- Problem 10 - 

select * from person
where age < 20 OR age > 30;

-- Problem 11 - 

select * from person
where age <> 27;

-- Problem 12 - 

select * from person
where favorite_color = 'red';

-- Problem 13 - 

select * from person
where favorite_color <> 'red' AND favorite_color <> 'blue';

-- Problem 14 - 

select * from person
where favorite_color = 'orange' OR favorite_color = 'green';

-- Problem 15 - 

select * from person
where favorite_color IN ('orange', 'green', 'blue');

-- Problem 16 - 

select * from person
where favorite_color IN ('yellow', 'purple');

