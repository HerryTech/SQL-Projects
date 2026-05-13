CREATE TABLE retail.categories(
	category_id INT PRIMARY KEY,
	category_name VARCHAR(20)
);

CREATE TABLE retail.suppliers(
	supplier_id INT PRIMARY KEY,
	country VARCHAR(20)
);

CREATE TABLE retail.stores(
	store_id INT PRIMARY KEY,
	city VARCHAR(20)
);

CREATE TABLE retail.promotions(
	promotion_id INT PRIMARY KEY,
	discount NUMERIC(5,2)
);

CREATE TABLE retial.customers(
	customer_id INT PRIMARY KEY,
	city VARCHAR(20),
	signup_date DATE
)