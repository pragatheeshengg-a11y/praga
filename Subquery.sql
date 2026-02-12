SELECT ai.airport_code,ai.airport_name,ai.city
FROM(
    SELECT city, count(*)
    FROM airports
    GROUP BY city
    HAVING count(*)>2
)AS q
JOIN airports AS ai
ON q.city=ai.city
ORDER BY ai.airport_name,ai.city;

SELECT boarding_no,ticket_no,seat_no
FROM boarding_passes
WHERE EXISTS (SELECT flight_id FROM ticket_flights WHERE fare_conditions='Business');


WITH long_range AS (SELECT * FROM aircrafts WHERE range > 7000)
SELECT count (*)
FROM flights AS f
JOIN long_range AS l 
ON f.aircraft_code=l.aircraft_code;

