SELECT * FROM orders;
SELECT * FROM orders WHERE state = 'California';
SELECT * FROM orders ORDER BY sales DESC;
SELECT category, COUNT(*) AS total_orders FROM orders GROUP BY category;
SELECT MONTH(order_date) AS month, SUM(sales) AS total_sales FROM orders GROUP BY MONTH(order_date) ORDER BY month;
SELECT o.order_id, o.sales, c.customer_name, c.city FROM orders o INNER JOIN customers c ON o.customer_id = c.customer_id;
SELECT product_name, SUM(sales) AS total_sales FROM orders GROUP BY product_name ORDER BY total_sales DESC LIMIT 5;
