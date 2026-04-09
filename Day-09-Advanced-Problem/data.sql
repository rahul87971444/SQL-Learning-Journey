-- Insert sample data

USE EcommerceDB;

INSERT INTO customers (name)
VALUES ('Rahul'), ('Amit'), ('Neha'), ('Rohit');

INSERT INTO orders (customer_id, amount)
VALUES
(1, 500),
(1, 700),
(2, 300),
(2, 400),
(2, 500),
(3, 1000);
