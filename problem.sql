CREATE TABLE user_detail(
    id SERIAL PRIMARY KEY,
    userID INT,
    userNAME TEXT
);

INSERT INTO user_detail(userID)
VALUES(101,'praga'),
      (102,'vicky'),
      (103,'babu'),
      (104,'muthu'),
      (105,'mani');
SELECT * FROM user_detail;
CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    user_name TEXT,
    user_id INT
);
INSERT INTO users(user_name,user_id)
VALUES('praga',1),
    ('muthu',2);
INSERT INTO users(user_name,user_id)
VALUES('mani',NULL);
CREATE TABLE flims(
    id SERIAL PRIMARY KEY,
    name TEXT,
    user_id INT
);

INSERT INTO flims(name, user_id)
values('flim_a', 1),('flim_b', 1),('flim_a', 2), ('flim_c', 2),('flim_d', 1)

SELECT u.user_name,COUNT(f.user_id) count /*or use COALESCE(COUNT(f.user_id),0) count left jion automatically count null as 0*/
FROM users AS u
LEFT JOIN flims AS f
ON u.user_id=f.user_id
GROUP BY user_name
ORDER BY count;
CREATE TABLE users_1(
    id SERIAL PRIMARY KEY,
    user_name TEXT,
    user_id INT
);
INSERT INTO users_1(user_name,user_id)
VALUES('praga',1),
    ('muthu',2),
    ('babu',3);

CREATE TABLE flims_a(
    id SERIAL PRIMARY KEY,
    name TEXT
)

INSERT INTO flims_a(name)
values('flim_a'),('flim_b'),('flim_a'),('flim_c'),('flim_d')


CREATE TABLE user_flims(
    id SERIAL PRIMARY KEY,
    user_id INT,
    flim_id INT
)

INSERT INTO user_flims(user_id, flim_id)
VALUES(1, 1),(1,2),(1,3),(2,1),(2,4),(3,4)

SELECT us.user_name,COUNT(*) count
FROM users_1 AS us
INNER JOIN user_flims AS  uf
ON us.user_id=uf.user_id
INNER JOIN flims_a AS fa 
ON fa.id=uf.flim_id
GROUP BY us.user_name
ORDER BY count;


user_name | count