SELECT country_id, COUNT(*) as city_count FROM city GROUP BY country_id HAVING COUNT(*) >= 20 ORDER BY city_count DESC;
