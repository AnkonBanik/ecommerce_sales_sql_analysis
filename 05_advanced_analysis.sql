
-- Project: Ecommerce Sales SQL Analysis
-- Advanced Analysis


-- 1. Monthly sales trend

SELECT
    DATE_TRUNC('month', order_date) AS sales_month,
    SUM(quantity * price) AS monthly_revenue
FROM ecommerce_sales
GROUP BY sales_month
ORDER BY sales_month;


-- 2. Repeat customers (customers with more than 1 order)

SELECT
    customer_id,
    customer_name,
    COUNT(order_id) AS total_orders
FROM ecommerce_sales
GROUP BY customer_id, customer_name
HAVING COUNT(order_id) > 1
ORDER BY total_orders DESC;

-- 3. High-value customers (top customers by total spending)

SELECT
    customer_id,
    customer_name,
    SUM(quantity * price) AS total_spent
FROM ecommerce_sales
GROUP BY customer_id, customer_name
ORDER BY total_spent DESC
LIMIT 5;

-- 4. City ranking by revenue

SELECT
    city,
    SUM(quantity * price) AS city_revenue,
    RANK() OVER (ORDER BY SUM(quantity * price) DESC) AS city_rank
FROM ecommerce_sales
GROUP BY city;

-- 5. Product performance ranking within each category

SELECT
    category,
    product_name,
    SUM(quantity * price) AS product_revenue,
    RANK() OVER (
        PARTITION BY category
        ORDER BY SUM(quantity * price) DESC
    ) AS product_rank
FROM ecommerce_sales
GROUP BY category, product_name
ORDER BY category, product_rank;
