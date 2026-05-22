# Retail Operations and Supply Chain Analytics

## Project Overview

This project analyzes end to end retail operations across multiple business functions including sales, customers, products, returns, shipping, payments, and supplier performance. The goal is to build a unified analytical system that supports executive decision making through structured SQL analysis and data modeling.

The dataset simulates a multi region retail business with transactional and operational data distributed across 12 relational tables.

## Business Problem

The organization lacked a centralized view of performance across sales, profitability, customer behavior, returns, and supply chain operations. Data was stored in separate systems, making it difficult to:

- Track revenue and profitability trends
- Identify high performing and underperforming products
- Monitor customer purchasing behavior
- Understand return patterns and financial leakage
- Evaluate supplier and logistics efficiency

This project addresses these gaps through structured SQL analysis.

## Project Objectives
- Build a normalized relational database structure
- Perform sales and profitability analysis
- Analyze customer behavior and segmentation
- Evaluate return patterns and financial risk
- Assess supply chain and supplier performance
- Perform time series and trend analysis using SQL
- Provide actionable business insights

## Database Design

The database follows a relational model with 12 tables:

- customers
- orders
- order_items
- products
- categories
- suppliers
- stores
- employees
- promotions
- payments
- shipments
- returns

The model is structured using primary and foreign key relationships with order_items and orders serving as core transactional tables.

## Tools Used
- PostgreSQL
- SQL
- pgAdmin

## Key Analysis Areas
Sales and Profitability
- Total revenue analysis
- Product and category performance
- Store level performance
- Average order value

Customer Analysis
- Customer segmentation
- Purchase frequency
- Top customers by revenue
- Customer retention signals

Returns and Risk
- Return rate analysis
- Refund impact evaluation
- High risk products and categories
- Supplier return risk

Supply Chain and Operations
- Shipment performance
- Supplier performance analysis
- Operational efficiency evaluation

Time Series Analysis
Monthly and yearly revenue trends
Running totals
Moving averages
Growth analysis using window functions
Key SQL Concepts Used
JOIN and LEFT JOIN
GROUP BY and HAVING
CTEs (Common Table Expressions)
Window functions (LAG, RANK, DENSE_RANK)
Aggregations and conditional logic
Time series analysis
Relational modeling
Key Business Insights (Summary)
Certain product categories contribute disproportionately to revenue
A small number of customers generate a large share of total revenue
Returns significantly impact profitability in specific categories
Supplier performance varies in both revenue contribution and return risk
Sales exhibit clear time based trends and seasonality patterns