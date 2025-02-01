-- Challenge 2.1

SELECT 
    product,
    SUM(quantity * price) AS total
FROM 
    sales
GROUP BY 
    product
ORDER BY
    total DESC;

-- Challenge 2.2

SELECT email, COUNT(*) AS many_times
FROM users
GROUP BY email
HAVING COUNT(*) > 1;

-- Challenge 2.3

UPDATE employees
SET salary = salary + (salary * 0.10)
WHERE salary < 5000;

-- Challenge 2.4

SELECT
    customers."name" as "customer_name",
    SUM(orders.total) as "total_compras"
FROM orders
JOIN customers ON orders.customer_id = customers.id
GROUP BY customers.id, customers."name"
ORDER BY total_compras DESC;

-- Challenge 2.5

SELECT categories."name" AS category_name, 
       products."name" AS product_name, 
       SUM(sales.quantity) AS total_sold
FROM sales
JOIN products ON sales.product_id = products.id
JOIN categories ON products.category_id = categories.id
GROUP BY categories.id, categories.name, products.id, products."name"
HAVING SUM(sales.quantity) > 100
ORDER BY total_sold DESC;

-- Challenge 2.6

CREATE VIEW monthly_summary AS
SELECT account_id, 
       EXTRACT(MONTH FROM transaction_date) AS month,
       EXTRACT(YEAR FROM transaction_date) AS year,
       SUM(amount) AS total_amount
FROM transactions
GROUP BY account_id, year, month;

SELECT * FROM monthly_summary
WHERE account_id IN (
    SELECT account_id
    FROM monthly_summary
    WHERE total_amount > 10000
);