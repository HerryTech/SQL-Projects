--DATA CLEANING

--Check the first 10 dataset
SELECT * FROM retail_sales
LIMIT 10; 

-- Check the total number of data
SELECT COUNT(*) FROM retail_sales;

--Check for null values in all columns
SELECT * FROM retail_sales
WHERE transactions_id IS NULL
OR sale_date IS NULL
OR sale_time IS NULL
OR customer_id IS NULL
OR gender IS NULL
OR category IS NULL
OR quantiy IS NULL
OR price_per_unit IS NULL
OR cogs IS NULL
OR total_sale IS NULL;

-- Delete rows with null
DELETE FROM retail_sales
WHERE transactions_id IS NULL
OR sale_date IS NULL
OR sale_time IS NULL
OR customer_id IS NULL
OR gender IS NULL
OR category IS NULL
OR quantiy IS NULL
OR price_per_unit IS NULL
OR cogs IS NULL
OR total_sale IS NULL;

-- DATA EXPLORATION

-- How many sales we have?
SELECT COUNT(*) AS total_sales FROM retail_sales;

-- How many unique customers we have?
SELECT COUNT(DISTINCT customer_id) AS unique_customers FROM retail_sales;

-- How many categories we have?
SELECT COUNT(DISTINCT category) AS category FROM retail_sales;

-- What are the categories we have?
SELECT DISTINCT category AS category FROM retail_sales;
