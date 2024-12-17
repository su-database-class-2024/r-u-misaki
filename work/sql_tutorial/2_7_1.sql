SELECT city, count(*), max(temp_lo)
    FROM weather
    GROUP BY city;