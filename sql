
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



-- ==========================================
-- Step 02: Data Load
-- Auto-generated from existing database
-- Source DB: ecommerce
-- Rows: 100
-- ==========================================

TRUNCATE TABLE ecommerce_sales;

--
-- PostgreSQL database dump
--

\restrict 71ewg1vhyboH5hXyoEmtE4pFiqgKCYrcs2ow68ZLWAzSv8FCumvEJZZgrWqqT9B

-- Dumped from database version 18.1 (Ubuntu 18.1-1.pgdg25.10+2)
-- Dumped by pg_dump version 18.1 (Ubuntu 18.1-1.pgdg25.10+2)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: ecommerce_sales; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (1, '2023-01-02', 101, 'Rahim', 'Dhaka', 201, 'Laptop', 'Electronics', 1, 75000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (2, '2023-01-03', 102, 'Karim', 'Chittagong', 202, 'Smartphone', 'Electronics', 1, 35000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (3, '2023-01-04', 103, 'Ayesha', 'Dhaka', 203, 'Headphones', 'Accessories', 2, 6000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (4, '2023-01-05', 104, 'Nabila', 'Sylhet', 204, 'Backpack', 'Accessories', 1, 2500.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (5, '2023-01-06', 105, 'Sajid', 'Rajshahi', 205, 'Office Chair', 'Furniture', 1, 12000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (6, '2023-01-07', 106, 'Fahim', 'Khulna', 206, 'Desk Lamp', 'Furniture', 2, 3600.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (7, '2023-01-08', 107, 'Tania', 'Dhaka', 202, 'Smartphone', 'Electronics', 1, 35000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (8, '2023-01-09', 108, 'Imran', 'Barisal', 203, 'Headphones', 'Accessories', 3, 9000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (9, '2023-01-10', 101, 'Rahim', 'Dhaka', 204, 'Backpack', 'Accessories', 2, 5000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (10, '2023-01-11', 102, 'Karim', 'Chittagong', 201, 'Laptop', 'Electronics', 1, 75000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (11, '2023-01-12', 103, 'Ayesha', 'Dhaka', 206, 'Desk Lamp', 'Furniture', 1, 1800.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (12, '2023-01-13', 104, 'Nabila', 'Sylhet', 205, 'Office Chair', 'Furniture', 1, 12000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (13, '2023-01-14', 105, 'Sajid', 'Rajshahi', 202, 'Smartphone', 'Electronics', 1, 35000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (14, '2023-01-15', 106, 'Fahim', 'Khulna', 203, 'Headphones', 'Accessories', 2, 6000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (15, '2023-01-16', 107, 'Tania', 'Dhaka', 204, 'Backpack', 'Accessories', 1, 2500.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (16, '2023-01-17', 108, 'Imran', 'Barisal', 201, 'Laptop', 'Electronics', 1, 75000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (17, '2023-01-18', 101, 'Rahim', 'Dhaka', 205, 'Office Chair', 'Furniture', 1, 12000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (18, '2023-01-19', 102, 'Karim', 'Chittagong', 206, 'Desk Lamp', 'Furniture', 2, 3600.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (19, '2023-01-20', 103, 'Ayesha', 'Dhaka', 202, 'Smartphone', 'Electronics', 1, 35000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (20, '2023-01-21', 104, 'Nabila', 'Sylhet', 203, 'Headphones', 'Accessories', 3, 9000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (21, '2023-01-22', 105, 'Sajid', 'Rajshahi', 201, 'Laptop', 'Electronics', 1, 75000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (22, '2023-01-23', 106, 'Fahim', 'Khulna', 204, 'Backpack', 'Accessories', 2, 5000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (23, '2023-01-24', 107, 'Tania', 'Dhaka', 205, 'Office Chair', 'Furniture', 1, 12000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (24, '2023-01-25', 108, 'Imran', 'Barisal', 202, 'Smartphone', 'Electronics', 1, 35000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (25, '2023-01-26', 101, 'Rahim', 'Dhaka', 203, 'Headphones', 'Accessories', 2, 6000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (26, '2023-01-27', 102, 'Karim', 'Chittagong', 206, 'Desk Lamp', 'Furniture', 1, 1800.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (27, '2023-01-28', 103, 'Ayesha', 'Dhaka', 201, 'Laptop', 'Electronics', 1, 75000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (28, '2023-01-29', 104, 'Nabila', 'Sylhet', 202, 'Smartphone', 'Electronics', 1, 35000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (29, '2023-01-30', 105, 'Sajid', 'Rajshahi', 204, 'Backpack', 'Accessories', 2, 5000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (30, '2023-01-31', 106, 'Fahim', 'Khulna', 205, 'Office Chair', 'Furniture', 1, 12000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (31, '2023-02-01', 107, 'Tania', 'Dhaka', 206, 'Desk Lamp', 'Furniture', 2, 3600.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (32, '2023-02-02', 108, 'Imran', 'Barisal', 203, 'Headphones', 'Accessories', 3, 9000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (33, '2023-02-03', 101, 'Rahim', 'Dhaka', 202, 'Smartphone', 'Electronics', 1, 35000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (34, '2023-02-04', 102, 'Karim', 'Chittagong', 201, 'Laptop', 'Electronics', 1, 75000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (35, '2023-02-05', 103, 'Ayesha', 'Dhaka', 204, 'Backpack', 'Accessories', 1, 2500.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (36, '2023-02-06', 104, 'Nabila', 'Sylhet', 205, 'Office Chair', 'Furniture', 1, 12000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (37, '2023-02-07', 105, 'Sajid', 'Rajshahi', 206, 'Desk Lamp', 'Furniture', 1, 1800.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (38, '2023-02-08', 106, 'Fahim', 'Khulna', 202, 'Smartphone', 'Electronics', 1, 35000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (39, '2023-02-09', 107, 'Tania', 'Dhaka', 203, 'Headphones', 'Accessories', 2, 6000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (40, '2023-02-10', 108, 'Imran', 'Barisal', 201, 'Laptop', 'Electronics', 1, 75000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (41, '2023-02-11', 101, 'Rahim', 'Dhaka', 204, 'Backpack', 'Accessories', 2, 5000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (42, '2023-02-12', 102, 'Karim', 'Chittagong', 205, 'Office Chair', 'Furniture', 1, 12000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (43, '2023-02-13', 103, 'Ayesha', 'Dhaka', 206, 'Desk Lamp', 'Furniture', 2, 3600.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (44, '2023-02-14', 104, 'Nabila', 'Sylhet', 202, 'Smartphone', 'Electronics', 1, 35000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (45, '2023-02-15', 105, 'Sajid', 'Rajshahi', 203, 'Headphones', 'Accessories', 3, 9000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (46, '2023-02-16', 106, 'Fahim', 'Khulna', 201, 'Laptop', 'Electronics', 1, 75000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (47, '2023-02-17', 107, 'Tania', 'Dhaka', 204, 'Backpack', 'Accessories', 1, 2500.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (48, '2023-02-18', 108, 'Imran', 'Barisal', 205, 'Office Chair', 'Furniture', 1, 12000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (49, '2023-02-19', 101, 'Rahim', 'Dhaka', 206, 'Desk Lamp', 'Furniture', 1, 1800.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (50, '2023-02-20', 102, 'Karim', 'Chittagong', 202, 'Smartphone', 'Electronics', 1, 35000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (51, '2023-02-21', 103, 'Ayesha', 'Dhaka', 201, 'Laptop', 'Electronics', 1, 75000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (52, '2023-02-22', 104, 'Nabila', 'Sylhet', 203, 'Headphones', 'Accessories', 2, 6000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (53, '2023-02-23', 105, 'Sajid', 'Rajshahi', 204, 'Backpack', 'Accessories', 2, 5000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (54, '2023-02-24', 106, 'Fahim', 'Khulna', 205, 'Office Chair', 'Furniture', 1, 12000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (55, '2023-02-25', 107, 'Tania', 'Dhaka', 206, 'Desk Lamp', 'Furniture', 2, 3600.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (56, '2023-02-26', 108, 'Imran', 'Barisal', 202, 'Smartphone', 'Electronics', 1, 35000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (57, '2023-02-27', 101, 'Rahim', 'Dhaka', 203, 'Headphones', 'Accessories', 3, 9000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (58, '2023-02-28', 102, 'Karim', 'Chittagong', 201, 'Laptop', 'Electronics', 1, 75000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (59, '2023-03-01', 103, 'Ayesha', 'Dhaka', 204, 'Backpack', 'Accessories', 1, 2500.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (60, '2023-03-02', 104, 'Nabila', 'Sylhet', 205, 'Office Chair', 'Furniture', 1, 12000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (61, '2023-03-03', 105, 'Sajid', 'Rajshahi', 206, 'Desk Lamp', 'Furniture', 1, 1800.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (62, '2023-03-04', 106, 'Fahim', 'Khulna', 202, 'Smartphone', 'Electronics', 1, 35000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (63, '2023-03-05', 107, 'Tania', 'Dhaka', 201, 'Laptop', 'Electronics', 1, 75000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (64, '2023-03-06', 108, 'Imran', 'Barisal', 203, 'Headphones', 'Accessories', 2, 6000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (65, '2023-03-07', 101, 'Rahim', 'Dhaka', 204, 'Backpack', 'Accessories', 2, 5000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (66, '2023-03-08', 102, 'Karim', 'Chittagong', 205, 'Office Chair', 'Furniture', 1, 12000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (67, '2023-03-09', 103, 'Ayesha', 'Dhaka', 206, 'Desk Lamp', 'Furniture', 2, 3600.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (68, '2023-03-10', 104, 'Nabila', 'Sylhet', 202, 'Smartphone', 'Electronics', 1, 35000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (69, '2023-03-11', 105, 'Sajid', 'Rajshahi', 203, 'Headphones', 'Accessories', 3, 9000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (70, '2023-03-12', 106, 'Fahim', 'Khulna', 201, 'Laptop', 'Electronics', 1, 75000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (71, '2023-03-13', 107, 'Tania', 'Dhaka', 204, 'Backpack', 'Accessories', 1, 2500.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (72, '2023-03-14', 108, 'Imran', 'Barisal', 205, 'Office Chair', 'Furniture', 1, 12000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (73, '2023-03-15', 101, 'Rahim', 'Dhaka', 206, 'Desk Lamp', 'Furniture', 1, 1800.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (74, '2023-03-16', 102, 'Karim', 'Chittagong', 202, 'Smartphone', 'Electronics', 1, 35000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (75, '2023-03-17', 103, 'Ayesha', 'Dhaka', 201, 'Laptop', 'Electronics', 1, 75000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (76, '2023-03-18', 104, 'Nabila', 'Sylhet', 203, 'Headphones', 'Accessories', 2, 6000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (77, '2023-03-19', 105, 'Sajid', 'Rajshahi', 204, 'Backpack', 'Accessories', 2, 5000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (78, '2023-03-20', 106, 'Fahim', 'Khulna', 205, 'Office Chair', 'Furniture', 1, 12000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (79, '2023-03-21', 107, 'Tania', 'Dhaka', 206, 'Desk Lamp', 'Furniture', 2, 3600.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (80, '2023-03-22', 108, 'Imran', 'Barisal', 202, 'Smartphone', 'Electronics', 1, 35000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (81, '2023-03-23', 101, 'Rahim', 'Dhaka', 203, 'Headphones', 'Accessories', 3, 9000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (82, '2023-03-24', 102, 'Karim', 'Chittagong', 201, 'Laptop', 'Electronics', 1, 75000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (83, '2023-03-25', 103, 'Ayesha', 'Dhaka', 204, 'Backpack', 'Accessories', 1, 2500.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (84, '2023-03-26', 104, 'Nabila', 'Sylhet', 205, 'Office Chair', 'Furniture', 1, 12000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (85, '2023-03-27', 105, 'Sajid', 'Rajshahi', 206, 'Desk Lamp', 'Furniture', 1, 1800.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (86, '2023-03-28', 106, 'Fahim', 'Khulna', 202, 'Smartphone', 'Electronics', 1, 35000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (87, '2023-03-29', 107, 'Tania', 'Dhaka', 201, 'Laptop', 'Electronics', 1, 75000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (88, '2023-03-30', 108, 'Imran', 'Barisal', 203, 'Headphones', 'Accessories', 2, 6000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (89, '2023-03-31', 101, 'Rahim', 'Dhaka', 204, 'Backpack', 'Accessories', 2, 5000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (90, '2023-04-01', 102, 'Karim', 'Chittagong', 205, 'Office Chair', 'Furniture', 1, 12000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (91, '2023-04-02', 103, 'Ayesha', 'Dhaka', 206, 'Desk Lamp', 'Furniture', 2, 3600.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (92, '2023-04-03', 104, 'Nabila', 'Sylhet', 202, 'Smartphone', 'Electronics', 1, 35000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (93, '2023-04-04', 105, 'Sajid', 'Rajshahi', 203, 'Headphones', 'Accessories', 3, 9000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (94, '2023-04-05', 106, 'Fahim', 'Khulna', 201, 'Laptop', 'Electronics', 1, 75000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (95, '2023-04-06', 107, 'Tania', 'Dhaka', 204, 'Backpack', 'Accessories', 1, 2500.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (96, '2023-04-07', 108, 'Imran', 'Barisal', 205, 'Office Chair', 'Furniture', 1, 12000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (97, '2023-04-08', 101, 'Rahim', 'Dhaka', 206, 'Desk Lamp', 'Furniture', 1, 1800.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (98, '2023-04-09', 102, 'Karim', 'Chittagong', 202, 'Smartphone', 'Electronics', 1, 35000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (99, '2023-04-10', 103, 'Ayesha', 'Dhaka', 201, 'Laptop', 'Electronics', 1, 75000.00);
INSERT INTO public.ecommerce_sales (order_id, order_date, customer_id, customer_name, city, product_id, product_name, category, quantity, total_amount) VALUES (100, '2023-04-11', 104, 'Nabila', 'Sylhet', 203, 'Headphones', 'Accessories', 2, 6000.00);


--
-- PostgreSQL database dump complete
--

\unrestrict 71ewg1vhyboH5hXyoEmtE4pFiqgKCYrcs2ow68ZLWAzSv8FCumvEJZZgrWqqT9B


-- ==========================================
-- Step 03: Data Validation
-- Source DB: ecommerce_sales
-- ==========================================

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



-- ==========================================
-- Project: Ecommerce Sales SQL Analysis
-- Step 04: Basic Data Analysis
-- ==========================================


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




-- ==========================================
-- Project: Ecommerce Sales SQL Analysis
-- Step 05: Advanced Analysis
-- ==========================================



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




-- ==========================================
-- Project: Ecommerce Sales SQL Analysis
-- Step 06: Business Insights & Recommendations
-- ==========================================

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


