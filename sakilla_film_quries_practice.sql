USE SAKILA;
SELECT film.title,language.name
FROM film
INNER JOIN language
ON film.language_id=language.language_id;
SELECT actor.first_name,actor.last_name,film_actor.film_id
FROM actor
INNER JOIN film_actor
ON actor.actor_id=film_actor.actor_id;
SELECT film.title,inventory.inventory_id
FROM film
INNER JOIN inventory
ON film.film_id=inventory.film_id;
SELECT film.title,
film_category.category_id
FROM film
INNER JOIN film_category
ON film.film_id=film_category.film_id;
SELECT category.name,film_category.film_id
FROM category
INNER JOIN film_category
ON category.category_id=film_category.category_id;
SELECT customer.first_name,customer.last_name,payment.amount
FROM customer
INNER JOIN payment
ON customer.customer_id=payment.customer_id;
SELECT customer.first_name,customer.last_name,rental_date
FROM customer
INNER JOIN rental
ON customer.customer_id=rental.customer_id;
SELECT staff.first_name,staff.last_name,payment.amount
FROM staff
INNER JOIN payment
ON staff.staff_id=payment.staff_id;
SELECT city.city,country.country_id
FROM city
INNER JOIN country
ON city.country_id=country.country_id;

