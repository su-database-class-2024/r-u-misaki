SELECT 
    c.name AS category,
    CAST(AVG(DATE_PART('day', r.return_date - r.rental_date)) AS DECIMAL(10,2)) as avg_rental_duration
FROM category c
JOIN film_category fc ON c.category_id = fc.category_id
JOIN film f ON fc.film_id = f.film_id
JOIN inventory i ON f.film_id = i.film_id
JOIN rental r ON i.inventory_id = r.inventory_id
WHERE r.return_date IS NOT NULL
GROUP BY c.category_id, c.name
ORDER BY avg_rental_duration DESC;
