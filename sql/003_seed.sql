DATABASE portfolio_db;

INSERT INTO customer (full_name, email, city, status)
VALUES ('Santiago Demo Customer', 'santiago.demo@example.com', 'Montevideo', 'A');

INSERT INTO customer (full_name, email, city, status)
VALUES ('Legacy ERP Client', 'legacy.client@example.com', 'San Jose', 'A');

INSERT INTO product (sku, name, unit_price, active)
VALUES ('FRAME-001', 'Classic Wood Frame', 25.50, 'Y');

INSERT INTO product (sku, name, unit_price, active)
VALUES ('GLASS-001', 'Standard Picture Glass', 12.75, 'Y');

INSERT INTO sales_order (customer_id, order_date, status)
VALUES (1, TODAY, 'N');

INSERT INTO sales_order_item (order_id, product_id, quantity, unit_price)
VALUES (1, 1, 2, 25.50);

INSERT INTO sales_order_item (order_id, product_id, quantity, unit_price)
VALUES (1, 2, 1, 12.75);
