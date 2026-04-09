USE EcommerceDB;

-- 1. Total orders per customer
SELECT c.name, COUNT(o.order_id) AS total_orders
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id;

--------------------------------------------------

-- 2. Customers with more than 2 orders
SELECT c.name, COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id
HAVING COUNT(o.order_id) > 2;

--------------------------------------------------

-- 3. Customer who spent the most money
SELECT c.name, SUM(o.amount) AS total_spent
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id
ORDER BY total_spent DESC
LIMIT 1;

--------------------------------------------------

-- 4. All customers with total spending (including no orders)
SELECT c.name, COALESCE(SUM(o.amount), 0) AS total_spent
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id;

--------------------------------------------------

-- 5. Categorize customers using CASE
SELECT c.name,
COALESCE(SUM(o.amount),0) AS total_spent,
CASE
    WHEN SUM(o.amount) >= 1500 THEN 'High'
    WHEN SUM(o.amount) >= 700 THEN 'Medium'
    ELSE 'Low'
END AS category
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id;
