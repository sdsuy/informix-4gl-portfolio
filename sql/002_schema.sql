DATABASE portfolio_db;

CREATE TABLE customer (
    customer_id SERIAL PRIMARY KEY,
    full_name   VARCHAR(80) NOT NULL,
    email       VARCHAR(120),
    city        VARCHAR(60),
    status      CHAR(1) DEFAULT 'A'
);

CREATE TABLE product (
    product_id  SERIAL PRIMARY KEY,
    sku         VARCHAR(30) NOT NULL,
    name        VARCHAR(100) NOT NULL,
    unit_price  DECIMAL(10,2) NOT NULL,
    active      CHAR(1) DEFAULT 'Y'
);

CREATE TABLE sales_order (
    order_id    SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    order_date  DATE NOT NULL,
    status      CHAR(1) DEFAULT 'N'
);

CREATE TABLE sales_order_item (
    item_id     SERIAL PRIMARY KEY,
    order_id    INTEGER NOT NULL,
    product_id  INTEGER NOT NULL,
    quantity    INTEGER NOT NULL,
    unit_price  DECIMAL(10,2) NOT NULL
);

ALTER TABLE sales_order
ADD CONSTRAINT FOREIGN KEY (customer_id)
REFERENCES customer (customer_id);

ALTER TABLE sales_order_item
ADD CONSTRAINT FOREIGN KEY (order_id)
REFERENCES sales_order (order_id);

ALTER TABLE sales_order_item
ADD CONSTRAINT FOREIGN KEY (product_id)
REFERENCES product (product_id);
