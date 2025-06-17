#  Ben Pizza Database Project

This SQL project simulates a real-world ordering system for a pizza business. It includes schema creation, automated inventory updates, payment records, customer insights, and operational reporting.

## Schema Overview

This project includes 13 relational tables:
`customers`: Customer details
`address`: Delivery information
`items`: Menu items available for order
`orders`: Customer purchase data
`ingredients`: Raw materials for each item
`recipe`: Link between items and ingredients
`inventory`: Stock level tracking
`staff`: Employee records
`shift`: Work hours
`roster`: Staff scheduling
`payment`: Payment tracking
`suppliers`: Vendor data
`ingredient_supplier`: Ingredient sourcing

### Trigger
A PostgreSQL trigger `trg_update_inventory` automatically updates ingredient stock after every new order.

## 📊 Query Categories
The `queries.sql` file contains analysis and reporting SQL scripts grouped into:

### 1. Customer Insights
- Customers with orders
- Total number of orders per customer

### 2. Sales & Revenue
- Total and daily revenue
- Revenue by item

### 3. Inventory Monitoring
- Current stock levels
- Low stock alerts

### 4. Order Analysis
- Most ordered items
- Orders per day

### 5. Delivery Analysis
- Orders by city
- Delivered vs. undelivered orders

### 6. Staff Scheduling
- Staff rosters for a date
- Total shifts per staff

### Tools Used
- Excel
- PostgreSQL
- Git & GitHub

