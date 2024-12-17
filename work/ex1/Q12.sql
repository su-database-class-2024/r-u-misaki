SELECT film_id, title, replacement_cost FROM film WHERE replacement_cost = (SELECT MAX(replacement_cost) FROM film) ORDER BY title LIMIT 5;
