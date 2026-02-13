SELECT s.aircraft_code,s.seat_no,s.fare_conditions,a.model->>'en'AS model,range
INTO aircraft_details
FROM seats s
JOIN aircrafts a
USING(aircraft_code)
LIMIT 5;

SELECT *
FROM aircraft_details;

CREATE TABLE work(
    id SERIAL PRIMARY KEY,
    work TEXT,
    salary INT
)

INSERT INTO work(work,salary)
VALUES('IT',40000),
      ('IT',50000),
      ('IT',50000),
      ('NONIT',50000),
      ('NONIT',30000);

SELECT *
FROM work;

SELECT work,role,SUM(salary) /* here the work as position 1 and role as 2 and sum as 3*/
FROM work
GROUP BY GROUPING SETS((1),(2),());     /*here 1,2 refers group by work and role which is same work and role salary are added */
/*from above group by only group and total it but grouping set can able to add by role as(2) ,work(1) and also grand total()*/
 
SELECT work,role,SUM(salary) /* here the work as position 1 and role as 2 and sum as 3*/
FROM work
GROUP BY (1,2); 
/*grouping set is grouping set done by manually
rollup is grouping subtotal grand taotal automatically
cube is do everypossible way automatic*/