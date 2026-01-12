
-- ==========================================
-- Step 01: Schema Creation
-- Project: Ecommerce Sales SQL Analysis
-- Database: PostgreSQL
-- ==========================================

-- If table exists

DROP TABLE IF EXISTS ecommerce_sales;

-- Table Creation


CREATE TABLE ecommerce_sales (
    order_id        INTEGER PRIMARY KEY,
    order_date      DATE NOT NULL,

    customer_id     INTEGER NOT NULL,
    customer_name   VARCHAR(100) NOT NULL,
    city            VARCHAR(50) NOT NULL,

    product_id      INTEGER NOT NULL,
    product_name    VARCHAR(100) NOT NULL,
    category        VARCHAR(50) NOT NULL,

    quantity        INTEGER NOT NULL CHECK (quantity > 0),
    price           NUMERIC(10,2) NOT NULL CHECK (price >= 0),
    total_amount    NUMERIC(10,2) NOT NULL CHECK (total_amount >= 0)
);

