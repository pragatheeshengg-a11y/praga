CREATE VIEW book_air AS
SELECT b.book_ref,b.book_date ,t.passenger_name,t.ticket_no 
FROM bookings b
JOIN tickets t
ON b.book_ref=t.book_ref;

SELECT *
FROM book_air;

ALTER VIEW book_air RENAME TO booking_air;
SELECT *
FROM booking_air;

DROP VIEW IF EXISTS views_aircraft;
/*VIEW can help to see multiple data from multiple table and store in local */

CREATE VIEW usa_city AS
SELECT c.city,c.country_id
FROM city AS c
WHERE country_id=103;

SELECT *
FROM usa_city;

INSERT INTO usa_city(city,country_id)
VALUES ('mannai',103);

SELECT *
FROM usa_city;

DROP VIEW IF EXISTS usa_cities;
DELETE 
FROM usa_city
WHERE city='mannai';/*Here we can delete the updated last value manni alone not in other detials from view becasue all  store in table that cannot be delete */

CREATE MATERIALIZED VIEW city_filters AS
SELECT c.city,c.country_id,c.city_id
FROM city as c
WHERE country_id=103;

REFRESH MATERIALIZED VIEW city_filters;
REFRESH MATERIALIZED VIEW CONCURRENTLY city_filters;
INSERT INTO city(city,country_id)
VALUES('MANNAI',103);
INSERT INTO city(city,country_id)
VALUES('CHENNAI',103);
SELECT * FROM city_filters;
/* Materialzied view canot be update or delete if you can add or delete from og table alone if you add refresh command on it then run the updated table will show you otherwise use refresh concurrently with unique index for referesh concurrenty*/

