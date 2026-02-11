SELECT passenger_name,passenger_id
FROM tickets
ORDER BY passenger_name
limit 5;
SELECT passenger_name,passenger_id
FROM tickets
ORDER BY passenger_name DESC
limit 5;

SELECT * FROM boarding_passes
OFFSET 15 ROWS
FETCH FIRST 10 ROWS ONLY;

SELECT * FROM aircrafts
WHERE aircraft_code NOT IN ('SU9','320');

SELECT *
FROM flights
WHERE actual_departure IS NOT NULL AND actual_arrival IS NOT NULL;


SELECT CAST ('11-02-2026' AS DATE);
SELECT CAST ('50' AS INTEGER);
SELECT CAST ('TRUE' AS BOOLEAN);