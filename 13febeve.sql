CREATE TABLE fruits(
    id SERIAL PRIMARY KEY,
    fruits TEXT
);

INSERT INTO fruits(fruits)
VALUES('banana'),
       ('apple');

SELECT * FROM fruits;
UPDATE public.fruits
SET fruits='fig'/*HERE ID NO 2 IS APPLE IS NOW UPDATED WITH FIG*/
WHERE id=2;  
SELECT * FROM fruits;    
DELETE FROM public.fruits /*HERE THIS WILL DELETE THE ID  1 DATA FROM THE TABLE*/
WHERE id=1;

TRUNCATE TABLE /*will delete all data from table*/
DROP TABLE /*will delete  whole table fromm database*/ 