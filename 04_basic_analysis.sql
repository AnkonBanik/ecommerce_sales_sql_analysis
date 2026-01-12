-- Project: Ecommerce Sales SQL Analysis
-- Basic Data Analysis



-- 1. Total number of orders
SELECT 
    COUNT(order_id) AS total_orders
FROM ecommerce_sales;


-- 2. Total revenue
SELECT 
    SUM(quantity * price) AS total_revenue
FROM ecommerce_sales;


-- 3. Total customers
SELECT 
    COUNT(DISTINCT customer_id) AS total_customers
FROM ecommerce_sales;



-- 4. Sales by city
SELECT 
    city,
    SUM(quantity * price) AS city_wise_sales
FROM ecommerce_sales
GROUP BY city
ORDER BY city_wise_sales DESC;



-- 5. Sales by product category
SELECT 
    category,
    SUM(quantity * price) AS category_sales
FROM ecommerce_sales
GROUP BY category
ORDER BY category_sales DESC;



-- 6. Top 5 selling products (by revenue)
SELECT 
    product_name,
    SUM(quantity * price) AS product_revenue
FROM ecommerce_sales
GROUP BY product_name
ORDER BY product_revenue DESC
LIMIT 5;



-- 7. Average order value
SELECT 
    AVG(quantity * price) AS average_order_value
FROM ecommerce_sales;
