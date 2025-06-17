#  Ben Pizza Database Project

This SQL project simulates a real-world ordering system for a pizza business. It includes schema creation, automated inventory updates, payment records, customer insights, and operational reporting.

## Schema Overview

This project includes 13 relational tables and a trigger:
- `customers`: Customer details
- `address`: Delivery information
- `items`: Menu items available for order
- `orders`: Customer purchase data
- `ingredients`: Raw materials for each item
- `recipe`: Link between items and ingredients
- `inventory`: Stock level tracking
- `staff`: Employee records
- `shift`: Work hours
- `roster`: Staff scheduling
- `payment`: Payment tracking
- `suppliers`: Vendor data
- `ingredient_supplier`: Ingredient sourcing

#### Trigger
A PostgreSQL trigger `trg_update_inventory` automatically updates ingredient stock after every new order.

## 📊 Query Categories
The `queries.sql` file contains analysis and reporting SQL scripts grouped into:
- Customer Insights 
- Sales & Revenue
- Inventory Monitoring
- Order Analysis
- Delivery Analysis
- Staff Scheduling

### Tools Used
- Excel
- PostgreSQL
- Git & GitHub

