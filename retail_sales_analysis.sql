-- Retail Sales Analysis
-- Author: Anish Kadam
-- Database: PostgreSQL
-- Purpose: Exploratory and business-focused SQL analysis

-- ============================================================
-- 1. Create a table
-- ============================================================

-- Import the CSV into PostgreSQL using pgAdmin's Import/Export
-- feature, then use the table name: retail_sales

-- ============================================================
-- 2. Basic data exploration
-- ============================================================

SELECT *
FROM retail_sales
LIMIT 10;

SELECT COUNT(*) AS total_rows
FROM retail_sales;

-- Check columns for NULL values before analysis.

-- ============================================================
-- 3. Category analysis
-- ============================================================

SELECT
    category,
    COUNT(*) AS transaction_count
FROM retail_sales
GROUP BY category
ORDER BY transaction_count DESC;


SELECT
    category, 
    SUM(total_sale) AS total_sales,
    AVG(total_sale) AS average_sale,
    MAX(total_sale) AS highest_sale
FROM retail_sales
GROUP BY category
ORDER BY total_sales DESC;


-- ============================================================
-- 4. Customer age analysis
-- ============================================================

SELECT
    ROUND(AVG(age)::numeric, 2) AS average_customer_age,
    MIN(age) AS minimum_age,
    MAX(age) AS maximum_age
FROM retail_sales;


SELECT
    gender,
    COUNT(*) AS transaction_count
FROM retail_sales
GROUP BY gender
ORDER BY transaction_count DESC;


-- ============================================================
-- 6. Date-based analysis
-- ============================================================

SELECT
    EXTRACT(YEAR FROM sale_date) AS sales_year,
    COUNT(*) AS transaction_count
FROM retail_sales
GROUP BY sales_year
ORDER BY sales_year;


-- ============================================================
-- 7. Category ranking
-- ============================================================

SELECT
    category,
    SUM(total_sale) AS total_sales,
    RANK() OVER (ORDER BY SUM(total_sale) DESC) AS sales_rank
FROM retail_sales
GROUP BY category
ORDER BY sales_rank;


-- ============================================================
-- 8. Highest-value customers
-- ============================================================

SELECT
    customer_id,
    COUNT(*) AS transaction_count,
    SUM(total_sale) AS customer_sales
FROM retail_sales
GROUP BY customer_id
ORDER BY customer_sales DESC
LIMIT 10;

