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

CREATE TABLE retail.employees(
	employee_id INT PRIMARY KEY,
	store_id INT,
	salary NUMERIC(10,2),

	CONSTRAINT fk_store_employee
		FOREIGN KEY(store_id)
		REFERENCES retail.stores(store_id)
)

CREATE TABLE retail.orders(
	order_id INT PRIMARY KEY,
	customer_id INT,
	store_id INT,
	order_date DATE,
	promotion_id INT,

	CONSTRAINT fk_customer
		FOREIGN KEY(customer_id)
		REFERENCES retail.customers(customer_id),

	CONSTRAINT fk_store_order
		FOREIGN KEY(store_id)
		REFERENCES retail.stores(store_id),

	CONSTRAINT fk_promotion
		FOREIGN KEY (promotion_id)
        REFERENCES retail.promotions(promotion_id)
)

CREATE TABLE retail.order_items(
	order_item_id INT PRIMARY KEY,
	order_id INT,
	product_id INT,
	qty INT,
	price NUMERIC(10,2),

	CONSTRAINT fk_order
		FOREIGN KEY(order_id)
		REFERENCES retail.orders(order_id),

	CONSTRAINT fk_product
		FOREIGN KEY(product_id)
		REFERENCES retail.products(product_id)
)

CREATE TABLE retail.payments(
	payment_id INT PRIMARY KEY,
	order_id INT
	amount NUMERIC(10,2),

	CONSTRAINT fk_payment_order
		FOREIGN KEY(order_id)
		REFERENCES retail.orders(order_id)
)

CREATE TABLE retail.shipments(
	shipment_id INT PRIMARY KEY,
	order_id INT,
	status VARCHAR(20),

	CONSTRAINT fk_shipment_order
		FOREIGN KEY(order_id)
		REFERENCES retail.orders(order_id)
)

CREATE TABLE retail.returns(
	return_id INT PRIMARY KEY,
	order_item_id INT,
	refund NUMERIC(10,2),

	CONSTRAINT fk_return_order_item
		FOREIGN KEY(order_item_id)
		REFERENCE retail.order_items(order_item_id)
)