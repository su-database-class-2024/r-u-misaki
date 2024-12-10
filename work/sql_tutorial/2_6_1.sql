SELECT *
    FROM weather w, cities c
    WHERE city = name;

SELECT city, temp_lo, temp_hi, prcp, date, location
    FROM weather w, cities c
    WHERE city = name;