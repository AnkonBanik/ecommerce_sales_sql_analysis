-- 1. Check total number of records
SELECT COUNT(*) AS total_orders FROM ecommerce_sales;

-- 2. Check for NULL values in critical columns
SELECT *
FROM ecommerce_sales
WHERE order_id IS NULL
   OR order_date IS NULL
   OR customer_id IS NULL
   OR product_id IS NULL
   OR total_amount IS NULL
   OR price IS NULL;

-- 3. Check for duplicate order IDs
SELECT order_id, COUNT(*) AS duplicate_count
FROM ecommerce_sales
GROUP BY order_id
HAVING COUNT(*) > 1;

-- 4. Validate total_amount calculation
SELECT *
FROM ecommerce_sales
WHERE total_amount <> quantity * price;

-- 5. Check invalid quantities or prices
SELECT *
FROM ecommerce_sales
WHERE quantity <= 0 OR price <= 0;



