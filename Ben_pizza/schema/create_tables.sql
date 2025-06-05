Create table customers(
cust_id int primary key,
cust_firstname varchar(50),
cust_secondname varchar(50)
);

Create table address(
add_id int primary key,
delivery boolean,
delivery_address1 varchar(200),
delivery_address2 varchar(200) NULL,
delivery_city varchar(20),
delivery_zipcode int
);

Create table orders(
row_id int primary key,
order_id int,
created_at timestamp,
item_id varchar(10),
cust_id int,
add_id int,
FOREIGN KEY(cust_id) REFERENCES customers(cust_id),
FOREIGN KEY(add_id) REFERENCES address(add_id)
);

Create table items(
item_id varchar(10) primary key,
sku varchar(20),
item_name varchar(100),
item_cat varchar(100),
item_size varchar(10),
item_price decimal(5,2),
FOREIGN KEY(sku) REFERENCES recipe(recipe_id)
);

Create table ingreadients(
ing_id varchar(10) primary key,
ing_name varchar(100),
ing_weight int,
ing_meas varchar(20),
ing_price decimal(5,2)
);

Create table recipe(
row_id int primary key,
recipe_id varchar(20),
ing_id varchar(20), 
quantity int,
FOREIGN KEY(ing_id) REFERENCES ingredient(ing_id)
);

Create table inventory(
inv_id int primary key,
ing_id varchar(10),
quantity int,
FOREIGN KEY(ing_id) REFERENCES recipe(ing_id)
);

Create table staff(
staff_id varchar(10) primary key,
first_name varchar(100),
last_name varchar(100),
position varchar(100),
hourly_rate decimal(5,2)
);

Create table shift(
shift_id varchar(10) primary key,
day_of_week varchar(20),
start_time timestamp,
end_time timestamp
);

Create table roster(
row_id int primary key,
rota_id varchar(10),
date date,
shift_id varchar(10),
staff_id varchar(10),
FOREIGN KEY(date) REFERENCES orders(created_at),
FOREIGN KEY(shift_id) REFERENCES shift(shift_id),
FOREIGN KEY(staff_id) REFERENCES staff(staff_id)
);








