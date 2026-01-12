
-- Project: Ecommerce Sales SQL Analysis
-- Business Insights & Recommendations


-- INSIGHT 1: Overall Business Performance

SELECT
    COUNT(order_id) AS total_orders,
    COUNT(DISTINCT customer_id) AS total_customers,
    SUM(quantity * price) AS total_revenue
FROM ecommerce_sales;


-- INSIGHT 2: Top Revenue Generating City

SELECT
    city,
    SUM(quantity * price) AS city_revenue
FROM ecommerce_sales
GROUP BY city
ORDER BY city_revenue DESC
LIMIT 1;


-- INSIGHT 3: Best Performing Product Category

SELECT
    category,
    SUM(quantity * price) AS category_revenue
FROM ecommerce_sales
GROUP BY category
ORDER BY category_revenue DESC
LIMIT 1;


-- INSIGHT 4: Customer Concentration Risk

SELECT
    customer_id,
    customer_name,
    SUM(quantity * price) AS total_spent
FROM ecommerce_sales
GROUP BY customer_id, customer_name
ORDER BY total_spent DESC
LIMIT 3;


-- INSIGHT 5: Low Performing Products (Revenue based)

SELECT
    product_name,
    SUM(quantity * price) AS product_revenue
FROM ecommerce_sales
GROUP BY product_name
ORDER BY product_revenue ASC
LIMIT 3;
