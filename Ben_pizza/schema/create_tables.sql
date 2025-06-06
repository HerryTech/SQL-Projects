-- 1. Customers
CREATE TABLE customers (
    cust_id INT PRIMARY KEY,
    cust_firstname VARCHAR(50),
    cust_secondname VARCHAR(50)
);

-- 2. Address
CREATE TABLE address (
    add_id INT PRIMARY KEY,
    delivery BOOLEAN,
    delivery_address1 VARCHAR(200) NOT NULL,
    delivery_address2 VARCHAR(200),
    delivery_city VARCHAR(20),
    delivery_zipcode INT
);

-- 3. Ingredients
CREATE TABLE ingredients (
    ing_id VARCHAR(10) PRIMARY KEY,
    ing_name VARCHAR(100),
    ing_weight INT,
    ing_meas VARCHAR(20),
    ing_price DECIMAL(5,2)
);

-- 4. Items (Pizzas etc.)
CREATE TABLE items (
    item_id VARCHAR(10) PRIMARY KEY,
    item_name VARCHAR(100),
    item_cat VARCHAR(100),
    item_size VARCHAR(10),
    item_price DECIMAL(5,2)
);

-- 5. Recipe - connects items with ingredients
CREATE TABLE recipe (
    row_id INT PRIMARY KEY,
    item_id VARCHAR(10),
    ing_id VARCHAR(10), 
    quantity INT,
    FOREIGN KEY (item_id) REFERENCES items(item_id),
    FOREIGN KEY (ing_id) REFERENCES ingredients(ing_id)
);

-- 6. Inventory - track stock levels of ingredients
CREATE TABLE inventory (
    inv_id INT PRIMARY KEY,
    ing_id VARCHAR(10),
    quantity INT,
    FOREIGN KEY (ing_id) REFERENCES ingredients(ing_id)
);

-- 7. Orders - must come after items, customers, address
CREATE TABLE orders (
    row_id INT PRIMARY KEY,
    order_id INT,
    created_at TIMESTAMP,
    item_id VARCHAR(10),
    quantity INT,
    cust_id INT,
    add_id INT,
    FOREIGN KEY (cust_id) REFERENCES customers(cust_id),
    FOREIGN KEY (add_id) REFERENCES address(add_id),
    FOREIGN KEY (item_id) REFERENCES items(item_id)
);

-- 8. Staff
CREATE TABLE staff (
    staff_id VARCHAR(10) PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    position VARCHAR(100),
    hourly_rate DECIMAL(5,2)
);

-- 9. Shift
CREATE TABLE shift (
    shift_id VARCHAR(10) PRIMARY KEY,
    day_of_week VARCHAR(20),
    start_time TIMESTAMP,
    end_time TIMESTAMP
);

-- 10. Roster (schedule)
CREATE TABLE roster (
    row_id INT PRIMARY KEY,
    rota_id VARCHAR(10),
    date DATE,
    shift_id VARCHAR(10),
    staff_id VARCHAR(10),
    FOREIGN KEY (shift_id) REFERENCES shift(shift_id),
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
);
