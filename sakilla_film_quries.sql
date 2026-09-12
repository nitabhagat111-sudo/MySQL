USE sakila;
SELECT*FROM film;
SELECT film_id,title FROM film;
SELECT*FROM film;
SELECT*FROM film WHERE rating="PG";
SELECT*FROM film WHERE rental_rate>4;
#RATING="PG"AND RENTAL RATE>3
SELECT*FROM film
WHERE rating="PG"AND rental_rate>3;
SELECT *FROM film
WHERE rating ="PG" OR rental_rate>3;
SELECT*FROM film
WHERE rental_rate=0.99 OR rental_rate=4.99;
SELECT*FROM film
WHERE NOT rating="PG";
SELECT*FROM film
WHERE rating IN("G","PG");
SELECT*FROM film
WHERE rental_rate IN(0.99,2.99,4.99);
SELECT*FROM film 
WHERE lenth BETWEEN 100 AND 150;
SELECT title FROM film
WHERE title like "A%";
SELECT title FROM film
WHERE title LIKE "%LOVE%";
SELECT title FROM film
WHERE title NOT LIKE"A%";
SELECT title FROM film
WHERE title NOT LIKE"A%";
SELECT title ,description FROM film
WHERE description is null;
SELECT title description FROM film
WHERE description is NOT NULL;
SELECT DISTINCT rating
FROM film;
SELECT title ,rental_rate
FROM film ORDER BY rental_rate ASC;
SELECT title ,rental_rate
FROM film ORDER BY rental_rate DESC;
SELECT title,rental_rate FROM film ORDER BY rental_rate DESC LIMIT 3;
SELECT title,renta_rate
FROM film ORDER BY rental_rate ASC LIMIT 5;
SELECT title,rental_rate FROM film ORDER BY rental_rate ASC
LIMIT 10 OFFSET 3;
SELECT DISTINCT rating FROM film;
SELECT rating ,count(*) FROM film
GROUP BY rating;
SELECT rating,count(*)
FROM film
GROUP BY rating;
SELECT rating,count(*)AS total_count FROM film GROUP BY rating HAVING total_count>200;
SELECT title,lenth,CASE
WHEN length<90 THEN "SHORT"
WHEN length BETWEEN 90 AND 120 THEN "MEDIUM"
ELSE"Long"
END AS length_category
FROM film;
SELECT COUNT(*)AS
TOTAL_COUNT FROM film;
SELECT MIN(rental_rate)AS
TOTAL_RENTAL
FROM film;
SELECT MAX(rental_rate)AS
TOTAL_RENTAL
FROM film;
SELECT AVG(rental_rate)AS
TOTAL_RENTAL
FROM film
