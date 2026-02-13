SELECT t.book_ref,t.passenger_id,t.passenger_name,b.book_date,b.total_amount
INTO tickets_info
FROM tickets as t
JOIN bookings as b
ON t.book_ref=b.book_ref;
 SELECT *
 FROM tickets_info;

 CREATE VIEW views_aircraft AS
 SELECT a.aircraft_code,a.model,a.range
 FROM aircrafts a;

