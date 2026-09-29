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
WITHOUT JOIN-Other Tables
SELECT COUNT(*) AS total_actors FROM actor;
SELECT COUNT(*) AS total_customers FROM customer;
SELECT COUNT(*) AS total_staff FROM staff;
SELECT COUNT(*) AS total_countries FROM country;
SELECT COUNT(*) AS total_cities FROM city;
SELECT COUNT(*) AS total_payment FROM payment;
SELECT SUM(amount) AS total_payment_amount 
FROM payment;
SELECT AVG(amount) AS avg_payment_amount
FROM payment;
SELECT MIN(amount) AS minimum_payment_amount,MAX (amount) AS maximum_payment_amount
FROM film;
Using jOIN
SELECT language.name AS language_name,COUNT(film.film_id) AS film_count
FROM language
INNER JOIN film ON language.language_id=film.language_id
GROUP BY language.language_id,language.name;
SELECT category.name AS category_name,
COUNT(film_category.film_id) AS film_count
FROM category
INNER JOIN film_category ON category.category_id=film_category.category_id
GROUP BY category.category_id,category.name;
SELECT category.name,COUNT(film _category.film_id) AS film_count
FROM category
INNER JOIN film_category ON category.category_id=film_category.category_id
GROUP BY category.category_id,category.name
ORDER BY film_count DESC
LIMIT 1
SELECT category.name AS category_name,AVG(film.rental_rate) AS average_rental_rate
FROM category
INNER JOIN film_category ON category. category_id=film_category.category_id
INNER JOIN film ON film_category.film_id=film.film_id
GROUP BY category.category_id,category.name;
SELECT category.name AS category_name, AVG(film.replacement_cost) AS average_replacement_cost
FROM categpry
INNER JOIN film category ON category.category_id=film_category.category.id
INNER JOIN film ON film_category.film_id=film.film_id
GROUP BY category .category_id,category.name;
SELECT language.name AS language_name,
COUNT(film.film_id) AS film_count FROM language
INNER JOIN film ON language.language_id=film.language_id
GROUP BY category.category_id,category.name;
Select actor.actor_id,actor.first_name,actor.last_name,COUNT(film_actor.film_id) AS film_count
FROM actor
INNER JOIN film_actor ON actor.actor_id=film_actor.actor_id
GROUP BY
actor.actor_id,actor.first_name,actor.last_name;
Select actor.actor_id,actor.first_name,actor.last_name,COUNT(film_actor.film_id)AS film_count
FROM actor
INNER JOIN film _actor ON actor.actor_id=film_actor.actor_id
GROUP BY
actor.actor_id,actor.first_name,actor_last_name
ORDER BY Film_count DESC
LIMIT 1;
Select customer.customer_id,customer.first_name,customer.last_name,COUNT( rental.rental_id)AS rental_count
FROM customer
INNER JOIN rental ON customer.customer_id=rental.customer_id
GROUP BY 
customer.customer_id,customer.first_name,customer.last_name;
Select customer.customer_id,customer.first_name,customer.last_name,
SUM(payment.amount) AS total_payment
FROM customer
INNER JOIN payment ON customer.customer_id=payment.customer_id
GROUP BY
customer.customer_id,customer.first_name,customer.last_name;
Select customer.customer_id,customer.first_name,customer.last_name,
SUM(payment.amount) AS total_payment
FROM customer
INNER JOIN payment ON customer.customer_id=payment.customer_id
GROUP BY
customer.customer_id,customer.first_name,customer.last_name
ORDER BY total_payment  DESC
LIMIT 1;
Select customer.customer_id,customer.first_name,customer.last_name,
Avg(pament.amount) AS average_payment_amount
FROM customer
INNER JOIN payment ON customer.customer_ID
GROUP BY customer.customer_id,customer.customer_first_name,customer_last-name;
Select staff_id,staff.first_name,staff,last_name,
count(rental.rental_id) AS total_rentals
FROM Staff
INNER JOIN rental ON staff.staff-id=rental.staff_id
GROUP BY staff.staff_id,staff.first_name,staff.last_name;
Select staff_id,staff.first_name,staff,last_name,
SUM(payment.amount) AS total_payment
FROM staff
INNER JOIN payment ON staff.staff_id=payment.staff_id
GROUP BY
staff.staff_id,staff.first_name,staff.last_name;
Select film.film_id,
COUNT(inventory.inventory_id) AS inventory_copies
FROM film
INNER JOIN invntory ON film.film_id=inventory.film_id
GROUP BY film.title;
Select film.film_id,
COUNT(inventory.inventory_id) AS inventory_copies
FROM film
INNER JOIN inventory ON film.film_id=inventory.film_id
GROUP BY film.title
ORDER BY inventory_copies DESC
LIMIT 1;


Select country.country,
COUNT(city.city_id) AS city_count
FROM country
INNER JOIN city ON countyry.country_id=city.country_id
GROUP BY country,country;
Select category.name AS category_name, film.rating,
COUNT(film.film_id) AS film_count
FROM category
INNER JOIN film_category ON category.category_id
INNER JOIN film
ON film_category.film_id=film.film_id
GROUP BY category.name,film. rating; 
SELECT customer.customer_id,customer. first_name,customer.last_name,staff.staff_id,
staff.first_name,staff.last_name,
SUM(payment.amount) AS total_payment
FROM payment
INNER JOIN customer ON payment.customer_id=customer.customer_id
INNER JOIN staff ON payment.staff_id=staff.staff_id
GROUP BY customer.customer_id,customer.first_name,customer.last_name
ORDER BY total_payment DESC
LIMIT 5;



