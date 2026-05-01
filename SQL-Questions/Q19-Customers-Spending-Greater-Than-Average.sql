SELECT c.name, SUM(o.amount) AS total_spending
FROM customer c
JOIN orders o
ON c.customerid = o.customerid
GROUP BY c.customerid, c.name
HAVING SUM(o.amount) > (
    SELECT AVG(amount)
    FROM orders
);
