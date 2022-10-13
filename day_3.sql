-- question 1
SELECT *
FROM customer
INNER JOIN address
ON address.address_id = customer.address_id
WHERE district = 'Texas';

-- question 2
SELECT first_name, last_name
FROM customer
INNER JOIN payment
ON customer.customer_id = payment.customer_id
WHERE amount > 6.99;

-- question 3
SELECT first_name, last_name
FROM customer
WHERE customer_id IN (
    SELECT customer_id
    FROM payment
    GROUP BY customer_id
    HAVING SUM(amount) > 175
    ORDER BY SUM(amount) DESC
);

-- question 4
SELECT *
FROM customer, country
INNER JOIN city
ON city.country_id = country.country_id
WHERE country = 'Nepal';

-- question 5
SELECT first_name, last_name
FROM staff
WHERE staff_id IN (
    SELECT staff_id
    FROM payment
    GROUP BY staff_id
    HAVING SUM(amount) > 52000
);

-- question 6
SELECT rating, COUNT(*)
FROM film
GROUP BY rating
ORDER BY COUNT(*) DESC;

-- question 7
SELECT *
FROM customer
INNER JOIN payment
ON customer.customer_id = payment.amount
WHERE amount > 6.99;

-- question 8
SELECT COUNT(amount)
FROM payment
WHERE amount <= 0;