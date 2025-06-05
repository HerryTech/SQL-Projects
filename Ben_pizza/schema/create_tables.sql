CREATE TABLE orders(
row_id INT PRIMARY KEY,
order_id INT,
created_at timestamp,
item_id varchar(10),
cust_id INT,
add_id int
FOREIGN KEY(cust_id) REFERENCES customers(cust_id),
FOREIGN KEY(add_id) REFERENCES address(item_id)
);

Create table customers(
cust_id int pk
cust_firstname varchar(50)
cust_secondname varchar(50)
):

Create table address(
add_id int primary key,
delivery boolean,
delivery_address1 varchar(200),
delivery_address2 varchar(200) NULL,
delivery_city varchar(20),
delivery_zipcode int
);

Create table item(
item_id varchar(10) primary key,
sku varchar(20)
item_name varchar(100),
item_cat varchar(100),
item_size varchar(10),
item_price decimal(5,2),
FOREIGN KEY(sku) REFERENCES recipe(recipe_id)
);

Create table ingreadient(
ing_id varchar(10) primary key,
ing_name varchar(100),
ing_weight int,
ing_meas varchar(20),
ing_price decimal(5,2),
);

Create table():recipe
-
row_id int pk
recipe_id varchar(20) UNIQUE
ing_id varchar(20) FK >- ingredient.ing_id
quantity int

Create table():inventory
-
inv_id int pk
item_id varchar(10) FK >- recipe.ing_id
quantity int

Create table():staff
-
staff_id varchar(10) pk
first_name varchar(100)
last_name varchar(100)
position varchar(100)
hourly_rate decimal(5,2)

Create table():shift
-
shift_id varchar(10) pk
day_of_week varchar(20)
start_time timestamp
end_time timestamp

Create table():roster
-
row_id int pk
rota_id varchar(10)
date date FK >- Order.created_at
shift_id varchar(10) FK >- shift.shift_id
staff_id varchar(10) FK >- staff.staff_id








