SELECT EXTRACT('day' FROM book_date) AS day,SUM(total_amount) as sales
FROM bookings
GROUP BY day /*here the extracted day is groped by day for eg:all the booking in day 1 is grouped*/
ORDER BY sales;/*here the order of table by asc og sales value*/


SELECT DATE_PART('day',book_date) AS day,DATE_PART('month', book_date) AS month,
SUM(total_amount) AS booking
FROM bookings
GROUP BY day,month 
HAVING DATE_PART('day', book_date)=26 AND DATE_PART('month',book_date)=6;

SELECT book_date,book_ref
FROM bookings
WHERE book_date='2017-07-15'::DATE;