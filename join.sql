SELECT s.seat_no,s.fare_conditions, model->>'en'AS model
FROM seats s
JOIN aircrafts a
ON a.aircraft_code=s.aircraft_code
WHERE a.model->>'en'='Airbus A320-200';

SELECT t.passenger_name,t.ticket_no,tf.fare_conditions,
DATE_PART('day',book_date) AS day,DATE_PART('month',book_date) AS month
FROM tickets t 
LEFT JOIN bookings b
ON t.book_ref=b.book_ref
LEFT JOIN ticket_flights tf 
ON t.ticket_no=tf.ticket_no
ORDER BY day,month;


SELECT t.passenger_name,t.ticket_no,tf.fare_conditions,
DATE_PART('day',book_date) AS day,DATE_PART('month',book_date) AS month
FROM tickets t 
RIGHT JOIN bookings b
ON t.book_ref=b.book_ref
RIGHT JOIN ticket_flights tf 
ON t.ticket_no=tf.ticket_no
ORDER BY day,month;

SELECT *
FROM boarding_passes b 
FULL JOIN flights f
ON b.flight_id=f.flight_id;

SELECT *
FROM aircrafts
CROSS JOIN airports;

SELECT *
FROM aircrafts
WHERE range > 4500
UNION ALL   /* Change this line as UNION.UNION ALL,INTERSECT,EXCEPT*/
SELECT *
FROM aircrafts
WHERE range <7500; 

SELECT f1.flight_id,f1.flight_no,f1.status,
f2.flight_id,f2.flight_no,f2.status
FROM flights f1,flights f2
WHERE f1.flight_no <> f2.flight_no
LIMIT 5;

SELECT *
FROM boarding_passes b 
FULL JOIN flights f
USING(flight_id); /*insteed using ON b.flight_id=f.flight_id; use this statement*/

SELECT *
FROM aircrafts AS a 
NATURAL JOIN seats s; /* it helps to need not to specify common name from those table*/