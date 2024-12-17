SELECT city, count(*), max(temp_lo)
    FROM weather
    WHERE city LIKE 'S%'    -- 'S'で始まる都市のみを対象
    GROUP BY city;