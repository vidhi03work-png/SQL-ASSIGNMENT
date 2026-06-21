USE SQL_ASS;

CREATE TABLE AppOrders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    amount DECIMAL(10,2),
    order_date DATE
);

INSERT INTO AppOrders VALUES
(1, 'Rahul', 450, '2026-06-01'),
(2, 'Priya', 700, '2026-06-02'),
(3, 'Amit', 500, '2026-06-03');

CREATE TABLE InStoreOrders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    amount DECIMAL(10,2),
    order_date DATE
);

INSERT INTO InStoreOrders VALUES
(101, 'Rahul', 350, '2026-06-02'),
(102, 'Neha', 600, '2026-06-04'),
(103, 'Ravi', 900, '2026-06-05');


#2
SELECT CUSTOMER_NAME FROM apporders
UNION
SELECT customer_name FROM instoreorders;

#3

SELECT*FROM apporders
UNION ALL
SELECT *FROM instoreorders;

#4

INSERT INTO InStoreOrders VALUES
(104, 'Priya', 800, '2026-06-06');

SELECT  CUSTOMER_NAME FROM apporders
UNION 
SELECT  CUSTOMER_NAME FROM instoreorders;

SELECT  CUSTOMER_NAME FROM apporders
UNION ALL
SELECT  CUSTOMER_NAME FROM instoreorders;

# UNION removes duplicate rows and returns only unique values, 
  whereas UNION ALL includes all rows, including duplicates. 
Therefore, UNION ALL generally returns more rows and performs faster because 
it does not perform duplicate elimination.
