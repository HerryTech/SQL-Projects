CREATE TABLE customers(
customer_id INT PRIMARY KEY,
customer_name VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE,
city VARCHAR(50),
country VARCHAR(50)
);

CREATE TABLE products(
product_id INT PRIMARY KEY,
product_name VARCHAR(100) NOT NULL,
category VARCHAR(50),
price DECIMAL(10, 2)
);

CREATE TABLE sales(
sale_id INT PRIMARY KEY,
customer_id INT,
product_id INT,
sale_date DATE,
quantity INT,
total_amount DECIMAL(10,2),
FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
FOREIGN KEY (product_id) REFERENCES products(product_id)
);