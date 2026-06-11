# Retail Operations and Supply Chain Intelligence Dashboard

## Project Overview

This project is the Power BI phase of a complete end to end Business Intelligence solution developed for Nova Retail Group.

The project began with a PostgreSQL based analytics initiative where data from multiple operational systems was imported, modeled, validated, and analyzed using SQL. After completing the database analysis and generating business insights, the data was connected to Power BI to build an interactive executive dashboard for ongoing performance monitoring and decision making.

The dashboard consolidates sales, customer, returns, supplier, and operational data into a centralized reporting solution that enables stakeholders to monitor business performance, identify risk areas, and uncover growth opportunities.

## Business Problem

Nova Retail Group operates across multiple markets and sales channels, generating large volumes of transactional and operational data. Leadership lacked a centralized reporting platform capable of providing visibility into revenue performance, customer behavior, returns, supplier effectiveness, and shipment operations.

The objective of this project was to transform raw operational data into actionable business intelligence through data modeling, DAX calculations, and interactive visual reporting.

## Project Workflow

### Phase 1: SQL Analytics

The project started in PostgreSQL where the following activities were completed:

* Database design and schema creation
* Data validation and quality checks
* Sales and profitability analysis
* Customer behavior analysis
* Returns and risk analysis
* Supply chain and logistics analysis
* Time series and trend analysis
* Executive insight reporting

### Phase 2: Power BI Development

The cleaned and validated data model was imported into Power BI where the following activities were completed:

* Star schema data modeling
* Dimension and fact table design
* Relationship management
* DAX measure development
* Time intelligence calculations
* KPI development
* Interactive dashboard creation
* Executive reporting design

## Data Model

The dashboard follows a star schema architecture consisting of:

### Fact Tables

* Fact_Orders
* Fact_OrderItems
* Fact_Returns
* Fact_Shipments

### Dimension Tables

* Dim_Date
* Dim_Customers
* Dim_Products
* Dim_Categories
* Dim_Stores
* Dim_Suppliers
* Dim_Promotions

---

## Dashboard Pages

### Executive Overview

Provides a high level view of company performance through revenue, orders, customers, returns, and growth trends.

### Sales & Profitability Analysis

Analyzes revenue drivers, product performance, category contribution, and sales growth.

### Customer Analysis

Examines customer acquisition, purchasing behavior, customer value, and geographic distribution.

### Returns & Risk Analysis

Evaluates refund trends, return rates, category level risks, and financial impact of returns.

### Operations & Logistics Analysis

Monitors shipment performance, delivery outcomes, and operational efficiency.

### Supplier Performance Analysis

Assesses supplier contribution, return rates, risk exposure, and supplier effectiveness.

---

## Key Metrics

The dashboard includes advanced DAX measures such as:

* Total Sales
* Total Orders
* Total Customers
* Average Order Value
* Return Rate
* Total Refund Amount
* Shipment Success Rate
* Revenue per Customer
* Orders per Customer
* Sales YTD
* Previous Year Sales
* YoY Growth %
* Rolling 12 Month Sales

---

## Key Insights

* Cat_5 generated the highest revenue among all product categories.
* Product 745 was the highest revenue generating product in the dataset.
* Cat_11 recorded the highest total refund value, indicating potential quality or fulfillment concerns.
* Shipment volumes were distributed relatively evenly across Delivered, Shipped, and Late statuses, highlighting opportunities for operational improvement.
* Revenue remained relatively stable across the analysis period with recurring seasonal peaks and troughs.

---

## Tools & Technologies

* PostgreSQL
* SQL
* Power BI
* Power Query
* DAX
* Data Modeling
* GitHub

---

## Deliverables

* PostgreSQL Analytics Solution
* Power BI Dashboard
* Data Model Documentation
* Stakeholder Requirements Document
* Technical Specification Document
* Executive Insights Report
* Project README Documentation

---
