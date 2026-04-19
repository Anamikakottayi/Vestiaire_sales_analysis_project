CREATE DATABASE sales_db;
USE sales_db;
SELECT COUNT(*) FROM sales_data;

#  TOTAL REVENUE
SELECT SUM(price_usd) AS total_revenue FROM sales_data WHERE sold = 1;

#  TOTAL_SALES
SELECT COUNT(*) AS total_sales
FROM sales_data
WHERE sold = 1;

#  Sales by Category
SELECT product_category, COUNT(*) AS sales
FROM sales_data
WHERE sold = 1
GROUP BY product_category
ORDER BY sales DESC;

#  Top Brands
SELECT brand_name, COUNT(*) AS sales
FROM sales_data
WHERE sold = 1
GROUP BY brand_name
ORDER BY sales DESC
LIMIT 10;

# Seller Performance
SELECT seller_id,
COUNT(*) AS total_listings,
SUM(sold) AS items_sold,
AVG(conversion_rate) AS conversion_rate
FROM sales_data
GROUP BY seller_id
ORDER BY items_sold DESC;

# Price Range Distribution
SELECT price_range, COUNT(*) AS total_products
FROM sales_data
GROUP BY price_range;

# Shipping Analysis
SELECT shipping_days, COUNT(*) AS orders
FROM sales_data
WHERE sold = 1
GROUP BY shipping_days
ORDER BY shipping_days;


