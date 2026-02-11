SELECT b.book_date AS date_of_bookings,b.total_amount AS total
FROM bookings AS b
WHERE book_date IN ('2017-7-10','2017-7-15','2017-7-20');

SELECT * FROM aircrafts
WHERE aircraft_code like '%21'

SELECT * FROM tickets
WHERE ticket_no BETWEEN '0005432001000' AND '0005432001050';