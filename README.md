# Retail Sales Analysis — SQL Project

## Project Overview

This project analyzes a retail sales dataset using **PostgreSQL and SQL** to identify sales patterns, customer behavior, product/category performance, and other useful business insights.

The project is designed as a practical **Data Analyst portfolio project**, focusing on data exploration, aggregation, filtering, grouping, and business-oriented SQL questions.

## Objectives

- Explore the structure and quality of the retail sales data.
- Identify important sales and customer patterns.
- Analyze category and transaction performance.
- Practice SQL functions such as `GROUP BY`, `ORDER BY`, `CASE`, aggregate functions, and date-based analysis.
- Convert raw transaction data into insights that can support business decisions.

## Dataset

- **Records:** 2,000
- **Columns:** 11
- **Missing values:** 22 cells
- **Database:** PostgreSQL
- **Language:** SQL

### Main fields

- `transactions_id`
- `sale_date`
- `sale_time`
- `customer_id`
- `gender`
- `age`
- `category`
- `quantiy`
- `price_per_unit`
- `cogs`
- `total_sale`

## Project Structure

```text
Retail-Sales-Analysis-SQL/
├── README.md
├── retail_sales.csv
└── retail_sales_analysis.sql
```

## Analysis Covered

The SQL analysis includes questions such as:

1. How many transactions are present in the dataset?
2. What is the overall sales/revenue generated?
3. What are the most frequently purchased categories?
4. Which categories generate the highest sales?
5. How does customer activity vary across available demographic fields?
6. What are the highest-value transactions?
7. What patterns can be identified from transaction-level data?
8. How can SQL aggregation be used to summarize retail performance?

## SQL Skills Demonstrated

- `SELECT`
- `WHERE`
- `GROUP BY`
- `ORDER BY`
- `HAVING`
- `CASE`
- `COUNT()`
- `SUM()`
- `AVG()`
- `MIN()` / `MAX()`
- Date functions
- Common Table Expressions (CTEs)
- Window functions where useful

## Workflow

```text
Raw CSV
   ↓
Data inspection
   ↓
Column/name standardization
   ↓
PostgreSQL table
   ↓
SQL exploration
   ↓
Business questions
   ↓
Insights
```

## Key Takeaways

The project demonstrates how SQL can be used to move from raw retail transactions to structured business analysis. The emphasis is on writing readable queries and connecting each query to a practical business question.

## Tools Used

- PostgreSQL
- SQL
- CSV
- GitHub

## Author

**Anish Kadam**

BE — Artificial Intelligence & Machine Learning

Interested in Data Analytics, SQL, Excel and Power BI.

---

### Note

This repository is an independently organized portfolio version of a retail-sales SQL analysis. The project structure, documentation, query organization, and presentation have been prepared for my own learning and portfolio use.
