# Retail Operations and Supply Chain Analytics

## Project Overview
g
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
- Monthly and yearly revenue trends
- Running totals
- Moving averages
- Growth analysis using window functions

## Key SQL Concepts Used
- JOIN and LEFT JOIN
- GROUP BY and HAVING
- CTEs (Common Table Expressions)
- Window functions (LAG, RANK, DENSE_RANK)
- Aggregations and conditional logic
- Time series analysis
- Relational modeling

## Key Business Insights
- `Cat_5` generated the highest category revenue at approximately `136.7 million`, followed closely by `Cat_3`, `Cat_21`, and `Cat_26`. Revenue distribution across categories remained relatively balanced, reducing dependence on a single category.
- Product `745` emerged as the top revenue generating product with total sales exceeding `674 thousand`, while products `8248`, `4738`, and `7363` also demonstrated strong sales performance.
- Several high revenue categories also recorded elevated refund exposure. `Cat_11` generated the highest total refund value at approximately `2.78 million`, followed closely by `Cat_26` and `Cat_21`.
- `Cat_5`, despite being the highest revenue generating category, also recorded refund losses exceeding `2.66 million`, highlighting the importance of evaluating profitability alongside sales performance.
- Supplier return rates ranged from approximately `3.84%` to `5.79%`, indicating operational performance variation across suppliers and potential quality inconsistency risks.
- Shipment operations showed near equal distribution across shipment statuses, with over `100 thousand` shipments marked as shipped and approximately `99 thousand` each classified as delivered and late. The high late shipment volume suggests operational efficiency improvement opportunities.
- Revenue trends remained relatively stable across `2020` to `2023`, with recurring revenue peaks observed around `July`, `October`, and `December`, indicating possible seasonal purchasing behavior.
- February consistently recorded lower monthly revenue compared to most periods, while year end months generally produced stronger sales performance.
