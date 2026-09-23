USE SAKILA;
SELECT count(*) AS total_films from film;
SELECT AVG(rental_duration) AS average_rental_duration FROM film;
SELECT MIN(rental_duration)AS minimum_rental_duration,MAX(rental_duration)AS maximum_rental_duration
FROM film;
SELECT AVG(rental_rate) AS Average_rental_rate
From film;
SELECT MIN( rental_rate)AS minimum_rental_rate,MAX( rental_rate) AS maximum_rental_rate
From film;
SELECT rating,COUNT(*) AS film_count FROM film GROUP BY rating;
SELECT rental_duration, COUNT(*) AS film_count
FROM film GROUP BY rental_duration;
SELECT AVG(replacement_cost)FROM film;
SELECT title, rental_rate FROM film WHERE rental_rate=(SELECT MAX(rental_rate)
FROM film);
SELECT title,rental_rate FROM film WHERE rental_rate=(SELECT MIN(rental_rate)
FROM film);
SELECT title,replacement_cost FROM film WHERE replacement_cost=(SELECT MAX(replacement_cost)FROM Film);
SELECT title,rental_duration FROM film WHERE  rental_duration=(SELECT MAX(rental_duration) FROM film); 
SELECT rating,rental_duration, count(*) AS film_count FROM film
GROUP BY rating,rental_duration;
SELECT rating, AVG(rental_rate) AS rental_rate
from film GROUP BY rating;
SELECT rating,rental_rate, COUNT(*) AS film_count FROM film  GROUP BY rating,rental_rate;
SELECT title,count(*)AS rental_rate FROM film where rental_rate>3;
SELECT title,count(*) AS replacement_cost where replacement_cost>20;
SELECT title,count(*) AS rental_duration from film where rental_duration>5;
