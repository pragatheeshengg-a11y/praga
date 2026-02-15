SELECT *,
AVG (age) OVER(PARTITION BY age)
FROM age;
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price NUMERIC(10,2),
    group_id INT NOT NULL
);

INSERT INTO products (product_id, product_name, price, group_id) VALUES
(105, 'Samsung TV', 45000, 2),
(101, 'iPhone Mobile', 80000, 1),
(110, 'LG Washing Machine', 30000, 3),
(103, 'OnePlus Mobile', 40000, 1),
(108, 'Sony TV', 55000, 2),
(102, 'Whirlpool Washing Machine', 28000, 3);

SELECT p.group_id,p.price,p.product_id,p.product_name,
ROW_NUMBER () OVER ( PARTITION BY group_id ORDER BY product_name DESC)/*This will order row of the table by product_id then in that order by product_name*/
FROM products AS p;

CREATE TABLE product_rank (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price NUMERIC(10,2),
    product_cat VARCHAR(50) NOT NULL
);
INSERT INTO product_rank (product_id, product_name, price, product_cat) VALUES
(105, 'Samsung TV', 45000, 'TV'),
(101, 'iPhone Mobile', 80000, 'Mobile'),
(110, 'LG Washing Machine', 30000, 'Washing Machine'),
(103, 'OnePlus Mobile', 40000, 'Mobile'),
(108, 'Sony TV', 55000, 'TV'),
(102, 'Whirlpool Washing Machine', 28000, 'Washing Machine');

SELECT p.product_id,p.product_name,p.price,p.product_cat,
RANK () OVER(PARTITION BY product_cat ORDER BY price)/*Here table is sorted by product category and order by category price and then rank it in this if 2 has same price both rank 1 and 2 will be 3 rd rank*/
FROM product_rank as p;
/*to avoid above condition like same rank as 1 and 2 as 3rd rank continue as 2 as 2nd rank use DENCE_RANK ()*/
SELECT p.product_id,p.product_name,p.price,p.product_cat,
FIRST_VALUE(price) OVER(PARTITION BY product_cat ORDER BY price)as lowest_price_in_cat/*it will show lowest price for that cat in for all items inn that cat*/
FROM product_rank AS p;
/*For highest value use LAST_VALUE()*/
SELECT p.product_id,p.product_name,p.price,p.product_cat,
LAG(price,1) OVER(PARTITION BY product_cat ORDER BY price)as pre_row,price - LAG(price,1) OVER(PARTITION BY product_cat ORDER BY price)as diff_row
FROM product_rank AS p;
/*LAG() function use the previous row value if above row has nothing or start vale have NULL and diff_row will show diff bt current and previous row*/
SELECT p.product_id,p.product_name,p.price,p.product_cat,
LEAD(price,1) OVER(PARTITION BY product_cat ORDER BY price)as pre_row,price - LAG(price,1) OVER(PARTITION BY product_cat ORDER BY price)as diff_row
FROM product_rank AS p;
/*LEAD () has take next row value and same as LAG()*/