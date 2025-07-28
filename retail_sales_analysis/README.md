# Retail Sales Analysis
This project demonstrates SQL skills and techniques typically used by data analysts to explore, clean, and analyze retail sales data. The project involves setting up a retail sales database, performing exploratory data analysis (EDA), and answering specific business questions through SQL queries. 

### Objectives
- Set up a retail sales database: Create and populate a retail sales database with the provided sales data.
- Data Cleaning: Identify and remove any records with missing or null values.
- Exploratory Data Analysis (EDA): Perform basic exploratory data analysis to understand the dataset.
- Business Analysis: Use SQL to answer specific business questions and derive insights from the sales data.

### Project Structure
**1. Database Setup**
- Database Creation: The project starts by creating a database named `retail_db`.
- Table Creation: A table named `retail_sales` is created to store the sales data. The table structure includes columns for transaction ID, sale date, sale time, customer ID, gender, age, product category, quantity sold, price per unit, cost of goods sold (COGS), and total sale amount.

**2. Data Exploration & Cleaning**
- Record Count: Determine the total number of records in the dataset.
- Customer Count: Find out how many unique customers are in the dataset.
- Category Count: Identify all unique product categories in the dataset.
- Null Value Check: Check for any null values in the dataset and delete records with missing data.

**3. Data Analysis & Findings**
The following SQL queries were developed to answer specific business questions:
- Retrieve sales made on a specific date
- Filter transactions based on category and quantity sold
- Calculate total sales per category
- Find the average age of customers by category
- Identify high-value transactions
- Transactions by gender and category
- Average sales per month and identify the best-selling month
- Top 5 customers by total sales

### Findings
- **Customer Demographics:** The dataset includes customers from various age groups, with sales distributed across different categories such as Clothing and Beauty.
* **High-Value Transactions:** Several transactions had a total sale amount greater than 1000, indicating premium purchases.
* **Sales Trends:** Monthly analysis shows variations in sales, helping identify peak seasons.
* **Customer Insights:** The analysis identifies the top-spending customers and the most popular product categories.

## Tools Used
- Excel
- PostgreSQL
- GitHub

## Queries
Stored in `sql` script





