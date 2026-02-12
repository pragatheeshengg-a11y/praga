SELECT COUNT (model)
FROM aircrafts;

SELECT COUNT(NULLIF(age,28)) null_check
FROM age;

CREATE TABLE pilots(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    speciality TEXT NOT NULL,
    age TEXT
)

INSERT INTO pilots(name,speciality,age)
VALUES ('praga','pilot',25),
    ('muthu','pilot',25),
    ('mani','co-pilot',28),
    ('vicky','co-pilot',NULL);
SELECT * FROM pilots;

SELECT SUM (total_amount)
FROM bookings;

SELECT MAX (total_amount)
FROM bookings;
SELECT MIN (total_amount)
FROM bookings;
SELECT AVG (total_amount)
FROM bookings;

SELECT city->>'en' as CITY,COUNT(*)
FROM airports
GROUP BY city
HAVING COUNT(*)>1;