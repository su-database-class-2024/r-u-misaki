SELECT max(temp_lo) FROM weather;

SELECT city FROM weather WHERE temp_lo = (SELECT max(temp_lo) FROM weather);

SELECT city, avg(temp_lo)
    FROM weather
    GROUP BY city;

SELECT city, count(*)
    FROM weather
    GROUP BY city;

SELECT weather.city, weather.temp_lo, weather.temp_hi,
       weather.prcp, weather.date, cities.location
    FROM weather, cities
    WHERE weather.city = cities.name;