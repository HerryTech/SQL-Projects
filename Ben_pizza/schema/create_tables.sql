-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/S0Ob58
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Order" (
    "row_id" int   NOT NULL,
    "order_id" int   NOT NULL,
    "created_at" datetime   NOT NULL,
    "item_id" int   NOT NULL,
    "cust_id" int   NOT NULL,
    "add_id" int   NOT NULL,
    CONSTRAINT "pk_Order" PRIMARY KEY (
        "row_id"
     )
);

CREATE TABLE "Customer" (
    "cust_id" int   NOT NULL,
    "cust_firstname" varchar(50)   NOT NULL,
    "cust_secondname" varchar(50)   NOT NULL,
    CONSTRAINT "pk_Customer" PRIMARY KEY (
        "cust_id"
     )
);

CREATE TABLE "address" (
    "add_id" int   NOT NULL,
    "delivery" boolean   NOT NULL,
    "delivery_address1" varchar(200)   NOT NULL,
    "delivery_address2" varchar(200)   NULL,
    "delivery_city" varchar(20)   NOT NULL,
    "delivery_zipcode" int   NOT NULL
);

CREATE TABLE "item" (
    "item_id" varchar(10)   NOT NULL,
    "sku" varchar(20)   NOT NULL,
    "item_name" varchar(100)   NOT NULL,
    "item_cat" varchar(100)   NOT NULL,
    "item_size" varchar(10)   NOT NULL,
    "item_price" decimal(10.2)   NOT NULL,
    CONSTRAINT "pk_item" PRIMARY KEY (
        "item_id"
     )
);

CREATE TABLE "ingredient" (
    "ing_id" varchar(10)   NOT NULL,
    "ing_name" varchar(100)   NOT NULL,
    "ing_weight" int   NOT NULL,
    "ing_meas" varchar(20)   NOT NULL,
    "ing_price" decimal(5.2)   NOT NULL,
    CONSTRAINT "pk_ingredient" PRIMARY KEY (
        "ing_id"
     )
);

CREATE TABLE "recipe" (
    "row_id" int   NOT NULL,
    "recipe_id" varchar(20)   NOT NULL,
    "ing_id" varchar(20)   NOT NULL,
    "quantity" int   NOT NULL,
    CONSTRAINT "pk_recipe" PRIMARY KEY (
        "row_id"
     )
);

CREATE TABLE "inventory" (
    "inv_id" int   NOT NULL,
    "item_id" varchar(10)   NOT NULL,
    "quantity" int   NOT NULL,
    CONSTRAINT "pk_inventory" PRIMARY KEY (
        "inv_id"
     )
);

CREATE TABLE "staff" (
    "staff_id" varchar(10)   NOT NULL,
    "first_name" varchar(100)   NOT NULL,
    "last_name" varchar(100)   NOT NULL,
    "position" varchar(100)   NOT NULL,
    "hourly_rate" decimal(10.2)   NOT NULL,
    CONSTRAINT "pk_staff" PRIMARY KEY (
        "staff_id"
     )
);

CREATE TABLE "shift" (
    "shift_id" varchar(10)   NOT NULL,
    "day_of_week" varchar(20)   NOT NULL,
    "start_time" datetime   NOT NULL,
    "end_time" datetime   NOT NULL,
    CONSTRAINT "pk_shift" PRIMARY KEY (
        "shift_id"
     )
);

CREATE TABLE "roster" (
    "row_id" int   NOT NULL,
    "rota_id" varchar(10)   NOT NULL,
    "date" datetime   NOT NULL,
    "shift_id" varchar(10)   NOT NULL,
    "staff_id" varchar(10)   NOT NULL,
    CONSTRAINT "pk_roster" PRIMARY KEY (
        "row_id"
     )
);

ALTER TABLE "Customer" ADD CONSTRAINT "fk_Customer_cust_id" FOREIGN KEY("cust_id")
REFERENCES "Order" ("cust_id");

ALTER TABLE "address" ADD CONSTRAINT "fk_address_add_id" FOREIGN KEY("add_id")
REFERENCES "Order" ("add_id");

ALTER TABLE "item" ADD CONSTRAINT "fk_item_item_id" FOREIGN KEY("item_id")
REFERENCES "Order" ("item_id");

ALTER TABLE "ingredient" ADD CONSTRAINT "fk_ingredient_ing_id" FOREIGN KEY("ing_id")
REFERENCES "recipe" ("ing_id");

ALTER TABLE "recipe" ADD CONSTRAINT "fk_recipe_recipe_id" FOREIGN KEY("recipe_id")
REFERENCES "item" ("sku");

ALTER TABLE "inventory" ADD CONSTRAINT "fk_inventory_item_id" FOREIGN KEY("item_id")
REFERENCES "recipe" ("ing_id");

ALTER TABLE "staff" ADD CONSTRAINT "fk_staff_staff_id" FOREIGN KEY("staff_id")
REFERENCES "roster" ("staff_id");

ALTER TABLE "shift" ADD CONSTRAINT "fk_shift_shift_id" FOREIGN KEY("shift_id")
REFERENCES "roster" ("shift_id");

ALTER TABLE "roster" ADD CONSTRAINT "fk_roster_date" FOREIGN KEY("date")
REFERENCES "Order" ("created_at");

