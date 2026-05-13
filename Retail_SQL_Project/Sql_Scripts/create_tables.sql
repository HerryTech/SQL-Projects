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

CREATE TABLE retail.customers(
	customer_id INT PRIMARY KEY,
	city VARCHAR(20),
	signup_date DATE
)

CREATE TABLE retail.products(
	product_id INT PRIMARY KEY,
	category_id	INT,
	supplier_id INT,
	price NUMERIC(10,2),

	CONSTRAINT fk_category
		FOREIGN KEY (category_id)
		REFERENCES retail.categories(category_id),

	CONSTRAINT fk_supplier
		FOREIGN KEY(supplier_id)
		REFERENCES retail.suppliers(supplier_id)
)

