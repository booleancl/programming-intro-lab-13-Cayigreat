\c bigcities

SELECT writers.name AS writer, cities.name AS city_id
FROM writers 
JOIN cities ON city_id = cities.id
WHERE city_id IN (
    SELECT id 
    FROM cities
    WHERE country = 'Japan'
);

