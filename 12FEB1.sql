SELECT DATE_PART('month',book_date) AS month,SUM(total_amount) AS bookings,
CASE WHEN SUM(total_amount)>6923152600.00 THEN 'the large'
     WHEN SUM(total_amount)<6923152600.00 THEN 'the least'
     ELSE 'equals' END bookings_qt
FROM bookings
GROUP BY month;



CREATE Table age(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    age INT
)

INSERT INTO age (name,age)
VALUES('Praga',25),
    ('mani',28),
    ('muthu',25),
    ('vicky',NULL);
SELECT *,
CASE WHEN age>25 THEN 'old'
     WHEN age isnull THEN 'unknown'
     ELSE 'young' END age_check
FROM age;  

SELECT *,
CASE WHEN age='25' THEN 'old'
     WHEN age isnull THEN 'unknown'
     ELSE 'young'END age_check
FROM pilots;

SELECT age, COALESCE(age,25) as age_filled
FROM age;

