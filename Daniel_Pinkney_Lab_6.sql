-- Lab 6
use sakila;

-- Task 1:
create table film_2020
(title VARCHAR(3000),
description VARCHAR(3000),
release_year INT,
language_id INT,
rental_rate decimal,
length INT,
rating VARCHAR(10),
special_features VARCHAR(3000));

LOAD DATA INFILE 'c:Users/danny/lab-sql-6/files_for_lab/films_2020.csv' 
into table film_2020
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from film_2020;

SHOW VARIABLES LIKE "secure_file_priv";

insert into film()
select from film_2020


select * from (select inventory_id, rental_id, datediff(return_date, rental_date) rental_duration,
	avg(datediff(return_date, rental_date)) over (partition by inventory_id) average from rental) as smth
where rental_duration > average
