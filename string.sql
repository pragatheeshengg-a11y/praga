SELECT POSITION ('SQL' IN 'POSTGRESQL');
SELECT STRPOS('POSTGRESQL','T') AS substring;

SELECT passenger_name, STRPOS(passenger_name,' ')/*here STRPOS used to find the position of space ' 'in all passenger_name list*/
FROM tickets;
SELECT passenger_name,REPLACE(passenger_name,' ','-')/*replace ' ' insteed of space with '- */
FROM tickets;

SELECT LEFT ('PRAGA',1);
SELECT LEFT ('PRAGA',2);
SELECT LEFT ('PRAGA',-1);
SELECT LEFT ('PRAGA',-2);
SELECT LEFT ('PRAGA',4);

SELECT RIGHT('PRAGA',1);
SELECT passenger_name,
BTRIM(SPLIT_PART(passenger_name,' ',1)) first_name,/*1 as fisrt word*/
BTRIM(SPLIT_PART(passenger_name,' ',2))last_name/*2 as fisrt word*/
FROM tickets;

SELECT passenger_name,
BTRIM(SPLIT_PART(passenger_name,' ',1)) first_name,/*1 as fisrt word*/
BTRIM(SPLIT_PART(passenger_name,' ',2))last_name/*2 as fisrt word*/
INTO passenger_name_split
FROM tickets;

SELECT CONCAT (first_name) ||' '|| (last_name) as full_name
FROM passenger_name_split;
SELECT UPPER(first_name),LOWER(last_name),INITCAP(first_name)
FROM passenger_name_split;