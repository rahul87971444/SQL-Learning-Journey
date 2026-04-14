# SQL-Questions

### 📌 Problem 1 : Customers Who Never Order

---

## 💡 Problem Statement

Find all customers who never placed any order.

---

## 🧠 Approach

* Used LEFT JOIN to include all customers
* Checked for NULL in Orders table
* NULL means no matching order

---

## 💻 SQL Solution

```sql
SELECT c.name
FROM Customers c
LEFT JOIN Orders o
ON c.id = o.customerId
WHERE o.customerId IS NULL;
```

---

## 📚 Concepts Used

* LEFT JOIN
* NULL handling
* Filtering

---

## 🚀 Key Learning

LEFT JOIN + NULL check is used to find missing relationships between tables.
