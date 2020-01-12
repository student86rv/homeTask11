CREATE TABLE IF NOT EXISTS customers (
    id INT,
    name VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS orders (
    id INT,
    customer_id INT
);

TRUNCATE TABLE customers;

INSERT INTO customers (id, name) VALUES (1, 'Joe');
INSERT INTO customers (id, name) VALUES (2, 'Henry');
INSERT INTO customers (id, name) VALUES (3, 'Sam');
INSERT INTO customers (id, name) VALUES (4, 'Max');

TRUNCATE TABLE orders;

INSERT INTO orders (id, customer_id) VALUES (1, 3);
INSERT INTO orders (id, customer_id) VALUES (2, 1);

SELECT name FROM customers WHERE id 
    NOT IN (SELECT customer_id FROM orders);